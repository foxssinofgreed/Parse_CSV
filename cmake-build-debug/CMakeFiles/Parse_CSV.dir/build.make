# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /home/fox/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/212.5457.51/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/fox/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/212.5457.51/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fox/CLionProjects/Parse_CSV

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fox/CLionProjects/Parse_CSV/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Parse_CSV.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/Parse_CSV.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Parse_CSV.dir/flags.make

CMakeFiles/Parse_CSV.dir/main.cpp.o: CMakeFiles/Parse_CSV.dir/flags.make
CMakeFiles/Parse_CSV.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fox/CLionProjects/Parse_CSV/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Parse_CSV.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Parse_CSV.dir/main.cpp.o -c /home/fox/CLionProjects/Parse_CSV/main.cpp

CMakeFiles/Parse_CSV.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Parse_CSV.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fox/CLionProjects/Parse_CSV/main.cpp > CMakeFiles/Parse_CSV.dir/main.cpp.i

CMakeFiles/Parse_CSV.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Parse_CSV.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fox/CLionProjects/Parse_CSV/main.cpp -o CMakeFiles/Parse_CSV.dir/main.cpp.s

# Object files for target Parse_CSV
Parse_CSV_OBJECTS = \
"CMakeFiles/Parse_CSV.dir/main.cpp.o"

# External object files for target Parse_CSV
Parse_CSV_EXTERNAL_OBJECTS =

Parse_CSV: CMakeFiles/Parse_CSV.dir/main.cpp.o
Parse_CSV: CMakeFiles/Parse_CSV.dir/build.make
Parse_CSV: CMakeFiles/Parse_CSV.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fox/CLionProjects/Parse_CSV/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Parse_CSV"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Parse_CSV.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Parse_CSV.dir/build: Parse_CSV
.PHONY : CMakeFiles/Parse_CSV.dir/build

CMakeFiles/Parse_CSV.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Parse_CSV.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Parse_CSV.dir/clean

CMakeFiles/Parse_CSV.dir/depend:
	cd /home/fox/CLionProjects/Parse_CSV/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fox/CLionProjects/Parse_CSV /home/fox/CLionProjects/Parse_CSV /home/fox/CLionProjects/Parse_CSV/cmake-build-debug /home/fox/CLionProjects/Parse_CSV/cmake-build-debug /home/fox/CLionProjects/Parse_CSV/cmake-build-debug/CMakeFiles/Parse_CSV.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Parse_CSV.dir/depend

