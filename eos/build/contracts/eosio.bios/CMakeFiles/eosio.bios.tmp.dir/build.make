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
include contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/depend.make

# Include the progress variables for this target.
include contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/progress.make

# Include the compile flags for this target's objects.
include contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/flags.make

contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.o: contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/flags.make
contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.o: ../contracts/eosio.bios/eosio.bios.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/opt/eos2/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.o"
	cd /opt/eos2/eos/build/contracts/eosio.bios && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.o -c /opt/eos2/eos/contracts/eosio.bios/eosio.bios.cpp

contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.i"
	cd /opt/eos2/eos/build/contracts/eosio.bios && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/eos2/eos/contracts/eosio.bios/eosio.bios.cpp > CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.i

contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.s"
	cd /opt/eos2/eos/build/contracts/eosio.bios && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/eos2/eos/contracts/eosio.bios/eosio.bios.cpp -o CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.s

contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.o.requires:

.PHONY : contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.o.requires

contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.o.provides: contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.o.requires
	$(MAKE) -f contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/build.make contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.o.provides.build
.PHONY : contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.o.provides

contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.o.provides.build: contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.o


# Object files for target eosio.bios.tmp
eosio_bios_tmp_OBJECTS = \
"CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.o"

# External object files for target eosio.bios.tmp
eosio_bios_tmp_EXTERNAL_OBJECTS =

contracts/eosio.bios/eosio.bios.tmp: contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.o
contracts/eosio.bios/eosio.bios.tmp: contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/build.make
contracts/eosio.bios/eosio.bios.tmp: contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/opt/eos2/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable eosio.bios.tmp"
	cd /opt/eos2/eos/build/contracts/eosio.bios && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/eosio.bios.tmp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/build: contracts/eosio.bios/eosio.bios.tmp

.PHONY : contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/build

contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/requires: contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/eosio.bios.cpp.o.requires

.PHONY : contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/requires

contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/clean:
	cd /opt/eos2/eos/build/contracts/eosio.bios && $(CMAKE_COMMAND) -P CMakeFiles/eosio.bios.tmp.dir/cmake_clean.cmake
.PHONY : contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/clean

contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/depend:
	cd /opt/eos2/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/eos2/eos /opt/eos2/eos/contracts/eosio.bios /opt/eos2/eos/build /opt/eos2/eos/build/contracts/eosio.bios /opt/eos2/eos/build/contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/eosio.bios/CMakeFiles/eosio.bios.tmp.dir/depend

