# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /root/opt/cmake-3.10.2/bin/cmake

# The command to remove a file.
RM = /root/opt/cmake-3.10.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /opt/eos2/eos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /opt/eos2/eos/build

# Include any dependencies generated for this target.
include contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/depend.make

# Include the progress variables for this target.
include contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/progress.make

# Include the compile flags for this target's objects.
include contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/flags.make

contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.o: contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/flags.make
contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.o: ../contracts/test_api_db/test_api_db.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/opt/eos2/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.o"
	cd /opt/eos2/eos/build/contracts/test_api_db && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.o -c /opt/eos2/eos/contracts/test_api_db/test_api_db.cpp

contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.i"
	cd /opt/eos2/eos/build/contracts/test_api_db && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/eos2/eos/contracts/test_api_db/test_api_db.cpp > CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.i

contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.s"
	cd /opt/eos2/eos/build/contracts/test_api_db && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/eos2/eos/contracts/test_api_db/test_api_db.cpp -o CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.s

contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.o.requires:

.PHONY : contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.o.requires

contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.o.provides: contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.o.requires
	$(MAKE) -f contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/build.make contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.o.provides.build
.PHONY : contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.o.provides

contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.o.provides.build: contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.o


# Object files for target test_api_db.tmp
test_api_db_tmp_OBJECTS = \
"CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.o"

# External object files for target test_api_db.tmp
test_api_db_tmp_EXTERNAL_OBJECTS =

contracts/test_api_db/test_api_db.tmp: contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.o
contracts/test_api_db/test_api_db.tmp: contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/build.make
contracts/test_api_db/test_api_db.tmp: contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/opt/eos2/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_api_db.tmp"
	cd /opt/eos2/eos/build/contracts/test_api_db && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_api_db.tmp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/build: contracts/test_api_db/test_api_db.tmp

.PHONY : contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/build

contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/requires: contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/test_api_db.cpp.o.requires

.PHONY : contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/requires

contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/clean:
	cd /opt/eos2/eos/build/contracts/test_api_db && $(CMAKE_COMMAND) -P CMakeFiles/test_api_db.tmp.dir/cmake_clean.cmake
.PHONY : contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/clean

contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/depend:
	cd /opt/eos2/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/eos2/eos /opt/eos2/eos/contracts/test_api_db /opt/eos2/eos/build /opt/eos2/eos/build/contracts/test_api_db /opt/eos2/eos/build/contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/test_api_db/CMakeFiles/test_api_db.tmp.dir/depend

