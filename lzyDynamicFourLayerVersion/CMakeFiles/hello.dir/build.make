# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch

# Include any dependencies generated for this target.
include CMakeFiles/hello.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hello.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hello.dir/flags.make

CMakeFiles/hello.dir/src/core.c.o: CMakeFiles/hello.dir/flags.make
CMakeFiles/hello.dir/src/core.c.o: src/core.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/hello.dir/src/core.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hello.dir/src/core.c.o   -c /home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch/src/core.c

CMakeFiles/hello.dir/src/core.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hello.dir/src/core.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch/src/core.c > CMakeFiles/hello.dir/src/core.c.i

CMakeFiles/hello.dir/src/core.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hello.dir/src/core.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch/src/core.c -o CMakeFiles/hello.dir/src/core.c.s

CMakeFiles/hello.dir/src/main.c.o: CMakeFiles/hello.dir/flags.make
CMakeFiles/hello.dir/src/main.c.o: src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/hello.dir/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hello.dir/src/main.c.o   -c /home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch/src/main.c

CMakeFiles/hello.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hello.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch/src/main.c > CMakeFiles/hello.dir/src/main.c.i

CMakeFiles/hello.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hello.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch/src/main.c -o CMakeFiles/hello.dir/src/main.c.s

CMakeFiles/hello.dir/src/read.c.o: CMakeFiles/hello.dir/flags.make
CMakeFiles/hello.dir/src/read.c.o: src/read.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/hello.dir/src/read.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hello.dir/src/read.c.o   -c /home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch/src/read.c

CMakeFiles/hello.dir/src/read.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hello.dir/src/read.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch/src/read.c > CMakeFiles/hello.dir/src/read.c.i

CMakeFiles/hello.dir/src/read.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hello.dir/src/read.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch/src/read.c -o CMakeFiles/hello.dir/src/read.c.s

CMakeFiles/hello.dir/src/tool.c.o: CMakeFiles/hello.dir/flags.make
CMakeFiles/hello.dir/src/tool.c.o: src/tool.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/hello.dir/src/tool.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hello.dir/src/tool.c.o   -c /home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch/src/tool.c

CMakeFiles/hello.dir/src/tool.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hello.dir/src/tool.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch/src/tool.c > CMakeFiles/hello.dir/src/tool.c.i

CMakeFiles/hello.dir/src/tool.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hello.dir/src/tool.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch/src/tool.c -o CMakeFiles/hello.dir/src/tool.c.s

# Object files for target hello
hello_OBJECTS = \
"CMakeFiles/hello.dir/src/core.c.o" \
"CMakeFiles/hello.dir/src/main.c.o" \
"CMakeFiles/hello.dir/src/read.c.o" \
"CMakeFiles/hello.dir/src/tool.c.o"

# External object files for target hello
hello_EXTERNAL_OBJECTS =

hello: CMakeFiles/hello.dir/src/core.c.o
hello: CMakeFiles/hello.dir/src/main.c.o
hello: CMakeFiles/hello.dir/src/read.c.o
hello: CMakeFiles/hello.dir/src/tool.c.o
hello: CMakeFiles/hello.dir/build.make
hello: CMakeFiles/hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable hello"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hello.dir/build: hello

.PHONY : CMakeFiles/hello.dir/build

CMakeFiles/hello.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hello.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hello.dir/clean

CMakeFiles/hello.dir/depend:
	cd /home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch /home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch /home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch /home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch /home/swh/桌面/MyProgram/lzy_ACL-onesetp_switch/CMakeFiles/hello.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hello.dir/depend
