require 'tempfile'
require 'pp'
require 'open4'

module Classbench
	class Generator
		attr_accessor :openflow_section

		# Rules generated by classbench
		attr_accessor :classbench_rules

		# Full path to seed, needs to be stored for later generation
		attr_accessor :seed_path

		attr_accessor :raw_rules

		# Array of arrays containing footprint for OpenFlow rule,
		# as if they were from original set, but without values
		# Ex: [["tp_dst"], ["nw_src", "nw_dst"]
		attr_accessor :pregenerated_rule_types

		attr_accessor :pregenerated_dl_srcs
		attr_accessor :pregenerated_dl_dsts
		attr_accessor :pregenerated_in_ports
		attr_accessor :pregenerated_eth_types

		attr_accessor :db_generator_path

		# All possible values in field nw_tos from DSCP Pool 1
		# https://www.iana.org/assignments/dscp-registry/dscp-registry.xhtml
		attr_accessor :nw_tos_values

		# Pregenerated possible VLAN values. First are [10,20,30..4090], followed by all other vlan IDs.
		# If seed contains 4 unique vlan IDs, then only IDs 10, 20, 30 or 40 will be used in generated rules.
		attr_accessor :vlan_pool

		def initialize(filename, db_generator_path)
			self.seed_path = filename
			self.classbench_rules = []
			self.db_generator_path = db_generator_path

			self.nw_tos_values = [0, 8, 16, 24, 32, 40, 48, 56, 10, 12, 14, 18, 20, 22, 26, 28, 30, 34, 36, 38, 46, 46]
			self.vlan_pool = ( (1..4094).select {|x,y| x % 10 == 0 } + (1..4094).to_a ).uniq
		end

		def parse_seed
			begin
				openflow_raw = File.read(self.seed_path).match_solution1(/openflow\n(.*)#/mi).captures.first
				self.openflow_section = YAML.load(openflow_raw)
				#pp self.openflow_section

				pregenerate_rule_types
				pregenerate_dl
				pregenerate_in_ports
				pregenerate_eth_types

				#p self.openflow_section

			rescue NoMethodError
				STDERR.puts "No openflow section found in the seed."
				return false
			end

			true
		end

		##########################

		def pregenerate_rule_types
			self.pregenerated_rule_types = []

			self.openflow_section["rule_distribution"].each do |rule_count|
				rule_count["count"].times do
					self.pregenerated_rule_types << rule_count["attributes"]
				end
			end
		end

		# TODO: Refactor, nasty repetition. Probably will make it unclear.

		def pregenerate_dl
			self.pregenerated_dl_srcs = []
			self.openflow_section["dl_src"].each do |vendor, count|
				count.to_i.times do
					self.pregenerated_dl_srcs << vendor
				end
			end

			self.pregenerated_dl_dsts = []
			self.openflow_section["dl_dst"].each do |vendor, count|
				count.to_i.times do
					self.pregenerated_dl_dsts << vendor
				end
			end
		end

		def pregenerate_in_ports
			self.pregenerated_in_ports = []
			self.openflow_section["in_port"].each do |port, count|
				count.to_i.times do
					self.pregenerated_in_ports << port
				end
			end
		end

		def pregenerate_eth_types
			self.pregenerated_eth_types = []
			self.openflow_section["eth_type"].each do |eth_type, count|
				count.to_i.times do
					self.pregenerated_eth_types << eth_type
				end
			end
		end

		##########################
		def generate_classbench_rules(format, count)
			current_dir = File.dirname(__FILE__)
			tmp_filters = Tempfile.new('filters')

			if format == "v6"
				# db_generator -c6 filename #{count} 0 0 0 tmp/#{rand}
				# Call classbench
				#system(current_dir+"/db_generator", "-c6", self.seed_path, count.to_s, "0", "0", "0", tmp_filters.path, " > /dev/null")
				pid, stdin, stdout, stderr = Open4::popen4(self.db_generator_path, "-c6", self.seed_path, count.to_s, "0", "0", "0", tmp_filters.path)
				ignored, status = Process::waitpid2 pid
			else # format == "v4" || format format == "of"
				# db_generator -c filename #{count} 0 0 0 tmp/#{rand}
				# Call classbench
				#system(current_dir+"/db_generator", "-c", self.seed_path, count.to_s, "0", "0", "0", tmp_filters.path, " > /dev/null")
				pid, stdin, stdout, stderr = Open4::popen4(self.db_generator_path, "-c", self.seed_path, count.to_s, "0", "0", "0", tmp_filters.path)
				ignored, status = Process::waitpid2 pid
			end

			#STDERR.puts "done"
			#puts status
			#puts $?

			self.raw_rules = File.readlines(tmp_filters.path)
			self.raw_rules.each do |classbench_line|
				self.classbench_rules << Rule.from_classbench_format(classbench_line)
			end

			return raw_rules
		end

		def generate_rules(format, count)
			generate_classbench_rules(format, count)

			if format != "of"
				return self.raw_rules
			end

			return classbench_rules.map do |rule|

				begin
					random_openflow_type = pregenerated_rule_types.sample
				end while 	((random_openflow_type.include?("nw_proto") and rule.attributes["nw_proto"] == 0) or
				                 ((not random_openflow_type.include?("nw_proto")) and (not rule.attributes["nw_proto"] == 0)) or
						 (random_openflow_type.include?("tp_src") and rule.attributes["tp_src"] == (0..65535)) or
						 ((not random_openflow_type.include?("tp_src")) and (not rule.attributes["tp_src"] == (0..65535))) or
						 (random_openflow_type.include?("tp_dst") and rule.attributes["tp_dst"] == (0..65535)) or
						 ((not random_openflow_type.include?("tp_dst")) and (not rule.attributes["tp_dst"] == (0..65535))))

				rule.remove_missing_attributes(random_openflow_type)

				#p random_openflow_type
				random_openflow_type.each do |attribute|
					if not rule.attributes.include?(attribute)
						#puts "Fill #{attribute}"

						if attribute == "in_port"
							rule.attributes["in_port"] = pregenerated_in_ports.sample
						end

						if attribute == "eth_type"
							rule.attributes["eth_type"] = pregenerated_eth_types.sample
						end

						random_dst_device_mac = (1..3).collect { "%02x" % [rand(255)] }.join(":")
						if attribute == "dl_dst"
							random_vendor = pregenerated_dl_dsts.sample
							rule.attributes["dl_dst"] = random_vendor + ":" + random_dst_device_mac
						end

						random_src_device_mac = (1..3).collect { "%02x" % [rand(255)] }.join(":")
						if attribute == "dl_src"
							random_vendor = pregenerated_dl_srcs.sample
							rule.attributes["dl_src"] = random_vendor + ":" + random_src_device_mac
						end

						if attribute == "dl_vlan"
							random_vlan_id_position = rand(self.openflow_section["unique_vlan_ids_count"].to_i)
							rule.attributes["dl_vlan"] = self.vlan_pool[random_vlan_id_position]
						end

						if attribute == "nw_tos"
							rule.attributes["nw_tos"] = nw_tos_values.sample
						end

						if attribute == "dl_pcp"
							rule.attributes["dl_pcp"] = rand(8)
						end

						if not ["in_port", "eth_type", "dl_dst", "dl_src", "dl_vlan", "nw_tos", "dl_pcp"].include?(attribute)
							STDERR.puts "Error: attribute #{attribute} not covered in generation process"
							exit 1
						end

					end
				end

				rule
			end
		end
	end
end
