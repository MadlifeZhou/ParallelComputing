# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/apple/CLionProjects/Lesson1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/apple/CLionProjects/Lesson1/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Lesson1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Lesson1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Lesson1.dir/flags.make

CMakeFiles/Lesson1.dir/main.c.o: CMakeFiles/Lesson1.dir/flags.make
CMakeFiles/Lesson1.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/apple/CLionProjects/Lesson1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Lesson1.dir/main.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Lesson1.dir/main.c.o   -c /Users/apple/CLionProjects/Lesson1/main.c

CMakeFiles/Lesson1.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Lesson1.dir/main.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/apple/CLionProjects/Lesson1/main.c > CMakeFiles/Lesson1.dir/main.c.i

CMakeFiles/Lesson1.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Lesson1.dir/main.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/apple/CLionProjects/Lesson1/main.c -o CMakeFiles/Lesson1.dir/main.c.s

CMakeFiles/Lesson1.dir/test.c.o: CMakeFiles/Lesson1.dir/flags.make
CMakeFiles/Lesson1.dir/test.c.o: ../test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/apple/CLionProjects/Lesson1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Lesson1.dir/test.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Lesson1.dir/test.c.o   -c /Users/apple/CLionProjects/Lesson1/test.c

CMakeFiles/Lesson1.dir/test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Lesson1.dir/test.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/apple/CLionProjects/Lesson1/test.c > CMakeFiles/Lesson1.dir/test.c.i

CMakeFiles/Lesson1.dir/test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Lesson1.dir/test.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/apple/CLionProjects/Lesson1/test.c -o CMakeFiles/Lesson1.dir/test.c.s

# Object files for target Lesson1
Lesson1_OBJECTS = \
"CMakeFiles/Lesson1.dir/main.c.o" \
"CMakeFiles/Lesson1.dir/test.c.o"

# External object files for target Lesson1
Lesson1_EXTERNAL_OBJECTS =

Lesson1: CMakeFiles/Lesson1.dir/main.c.o
Lesson1: CMakeFiles/Lesson1.dir/test.c.o
Lesson1: CMakeFiles/Lesson1.dir/build.make
Lesson1: CMakeFiles/Lesson1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/apple/CLionProjects/Lesson1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable Lesson1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Lesson1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Lesson1.dir/build: Lesson1

.PHONY : CMakeFiles/Lesson1.dir/build

CMakeFiles/Lesson1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Lesson1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Lesson1.dir/clean

CMakeFiles/Lesson1.dir/depend:
	cd /Users/apple/CLionProjects/Lesson1/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/apple/CLionProjects/Lesson1 /Users/apple/CLionProjects/Lesson1 /Users/apple/CLionProjects/Lesson1/cmake-build-debug /Users/apple/CLionProjects/Lesson1/cmake-build-debug /Users/apple/CLionProjects/Lesson1/cmake-build-debug/CMakeFiles/Lesson1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Lesson1.dir/depend

