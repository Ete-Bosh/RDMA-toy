# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/client/Desktop/RDMA-toy

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/client/Desktop/RDMA-toy/build

# Include any dependencies generated for this target.
include CMakeFiles/common.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/common.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/common.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/common.dir/flags.make

CMakeFiles/common.dir/common.c.o: CMakeFiles/common.dir/flags.make
CMakeFiles/common.dir/common.c.o: /home/client/Desktop/RDMA-toy/common.c
CMakeFiles/common.dir/common.c.o: CMakeFiles/common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/client/Desktop/RDMA-toy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/common.dir/common.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/common.dir/common.c.o -MF CMakeFiles/common.dir/common.c.o.d -o CMakeFiles/common.dir/common.c.o -c /home/client/Desktop/RDMA-toy/common.c

CMakeFiles/common.dir/common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/common.dir/common.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/client/Desktop/RDMA-toy/common.c > CMakeFiles/common.dir/common.c.i

CMakeFiles/common.dir/common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/common.dir/common.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/client/Desktop/RDMA-toy/common.c -o CMakeFiles/common.dir/common.c.s

# Object files for target common
common_OBJECTS = \
"CMakeFiles/common.dir/common.c.o"

# External object files for target common
common_EXTERNAL_OBJECTS =

libcommon.a: CMakeFiles/common.dir/common.c.o
libcommon.a: CMakeFiles/common.dir/build.make
libcommon.a: CMakeFiles/common.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/client/Desktop/RDMA-toy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libcommon.a"
	$(CMAKE_COMMAND) -P CMakeFiles/common.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/common.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/common.dir/build: libcommon.a
.PHONY : CMakeFiles/common.dir/build

CMakeFiles/common.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/common.dir/cmake_clean.cmake
.PHONY : CMakeFiles/common.dir/clean

CMakeFiles/common.dir/depend:
	cd /home/client/Desktop/RDMA-toy/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/client/Desktop/RDMA-toy /home/client/Desktop/RDMA-toy /home/client/Desktop/RDMA-toy/build /home/client/Desktop/RDMA-toy/build /home/client/Desktop/RDMA-toy/build/CMakeFiles/common.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/common.dir/depend
