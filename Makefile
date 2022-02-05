# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/swh/桌面/MyProgram/ACL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/swh/桌面/MyProgram/ACL

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/swh/桌面/MyProgram/ACL/CMakeFiles /home/swh/桌面/MyProgram/ACL/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/swh/桌面/MyProgram/ACL/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named hello

# Build rule for target.
hello: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 hello
.PHONY : hello

# fast build rule for target.
hello/fast:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/build
.PHONY : hello/fast

src/core.o: src/core.c.o

.PHONY : src/core.o

# target to build an object file
src/core.c.o:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/src/core.c.o
.PHONY : src/core.c.o

src/core.i: src/core.c.i

.PHONY : src/core.i

# target to preprocess a source file
src/core.c.i:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/src/core.c.i
.PHONY : src/core.c.i

src/core.s: src/core.c.s

.PHONY : src/core.s

# target to generate assembly for a file
src/core.c.s:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/src/core.c.s
.PHONY : src/core.c.s

src/main.o: src/main.c.o

.PHONY : src/main.o

# target to build an object file
src/main.c.o:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/src/main.c.o
.PHONY : src/main.c.o

src/main.i: src/main.c.i

.PHONY : src/main.i

# target to preprocess a source file
src/main.c.i:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/src/main.c.i
.PHONY : src/main.c.i

src/main.s: src/main.c.s

.PHONY : src/main.s

# target to generate assembly for a file
src/main.c.s:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/src/main.c.s
.PHONY : src/main.c.s

src/read.o: src/read.c.o

.PHONY : src/read.o

# target to build an object file
src/read.c.o:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/src/read.c.o
.PHONY : src/read.c.o

src/read.i: src/read.c.i

.PHONY : src/read.i

# target to preprocess a source file
src/read.c.i:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/src/read.c.i
.PHONY : src/read.c.i

src/read.s: src/read.c.s

.PHONY : src/read.s

# target to generate assembly for a file
src/read.c.s:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/src/read.c.s
.PHONY : src/read.c.s

src/tool.o: src/tool.c.o

.PHONY : src/tool.o

# target to build an object file
src/tool.c.o:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/src/tool.c.o
.PHONY : src/tool.c.o

src/tool.i: src/tool.c.i

.PHONY : src/tool.i

# target to preprocess a source file
src/tool.c.i:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/src/tool.c.i
.PHONY : src/tool.c.i

src/tool.s: src/tool.c.s

.PHONY : src/tool.s

# target to generate assembly for a file
src/tool.c.s:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/src/tool.c.s
.PHONY : src/tool.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... hello"
	@echo "... src/core.o"
	@echo "... src/core.i"
	@echo "... src/core.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
	@echo "... src/read.o"
	@echo "... src/read.i"
	@echo "... src/read.s"
	@echo "... src/tool.o"
	@echo "... src/tool.i"
	@echo "... src/tool.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

