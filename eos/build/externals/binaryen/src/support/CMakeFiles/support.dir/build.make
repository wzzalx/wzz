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
include externals/binaryen/src/support/CMakeFiles/support.dir/depend.make

# Include the progress variables for this target.
include externals/binaryen/src/support/CMakeFiles/support.dir/progress.make

# Include the compile flags for this target's objects.
include externals/binaryen/src/support/CMakeFiles/support.dir/flags.make

externals/binaryen/src/support/CMakeFiles/support.dir/archive.cpp.o: externals/binaryen/src/support/CMakeFiles/support.dir/flags.make
externals/binaryen/src/support/CMakeFiles/support.dir/archive.cpp.o: ../externals/binaryen/src/support/archive.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/opt/eos2/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object externals/binaryen/src/support/CMakeFiles/support.dir/archive.cpp.o"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/support.dir/archive.cpp.o -c /opt/eos2/eos/externals/binaryen/src/support/archive.cpp

externals/binaryen/src/support/CMakeFiles/support.dir/archive.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/support.dir/archive.cpp.i"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/eos2/eos/externals/binaryen/src/support/archive.cpp > CMakeFiles/support.dir/archive.cpp.i

externals/binaryen/src/support/CMakeFiles/support.dir/archive.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/support.dir/archive.cpp.s"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/eos2/eos/externals/binaryen/src/support/archive.cpp -o CMakeFiles/support.dir/archive.cpp.s

externals/binaryen/src/support/CMakeFiles/support.dir/archive.cpp.o.requires:

.PHONY : externals/binaryen/src/support/CMakeFiles/support.dir/archive.cpp.o.requires

externals/binaryen/src/support/CMakeFiles/support.dir/archive.cpp.o.provides: externals/binaryen/src/support/CMakeFiles/support.dir/archive.cpp.o.requires
	$(MAKE) -f externals/binaryen/src/support/CMakeFiles/support.dir/build.make externals/binaryen/src/support/CMakeFiles/support.dir/archive.cpp.o.provides.build
.PHONY : externals/binaryen/src/support/CMakeFiles/support.dir/archive.cpp.o.provides

externals/binaryen/src/support/CMakeFiles/support.dir/archive.cpp.o.provides.build: externals/binaryen/src/support/CMakeFiles/support.dir/archive.cpp.o


externals/binaryen/src/support/CMakeFiles/support.dir/bits.cpp.o: externals/binaryen/src/support/CMakeFiles/support.dir/flags.make
externals/binaryen/src/support/CMakeFiles/support.dir/bits.cpp.o: ../externals/binaryen/src/support/bits.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/opt/eos2/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object externals/binaryen/src/support/CMakeFiles/support.dir/bits.cpp.o"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/support.dir/bits.cpp.o -c /opt/eos2/eos/externals/binaryen/src/support/bits.cpp

externals/binaryen/src/support/CMakeFiles/support.dir/bits.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/support.dir/bits.cpp.i"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/eos2/eos/externals/binaryen/src/support/bits.cpp > CMakeFiles/support.dir/bits.cpp.i

externals/binaryen/src/support/CMakeFiles/support.dir/bits.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/support.dir/bits.cpp.s"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/eos2/eos/externals/binaryen/src/support/bits.cpp -o CMakeFiles/support.dir/bits.cpp.s

externals/binaryen/src/support/CMakeFiles/support.dir/bits.cpp.o.requires:

.PHONY : externals/binaryen/src/support/CMakeFiles/support.dir/bits.cpp.o.requires

externals/binaryen/src/support/CMakeFiles/support.dir/bits.cpp.o.provides: externals/binaryen/src/support/CMakeFiles/support.dir/bits.cpp.o.requires
	$(MAKE) -f externals/binaryen/src/support/CMakeFiles/support.dir/build.make externals/binaryen/src/support/CMakeFiles/support.dir/bits.cpp.o.provides.build
.PHONY : externals/binaryen/src/support/CMakeFiles/support.dir/bits.cpp.o.provides

externals/binaryen/src/support/CMakeFiles/support.dir/bits.cpp.o.provides.build: externals/binaryen/src/support/CMakeFiles/support.dir/bits.cpp.o


externals/binaryen/src/support/CMakeFiles/support.dir/colors.cpp.o: externals/binaryen/src/support/CMakeFiles/support.dir/flags.make
externals/binaryen/src/support/CMakeFiles/support.dir/colors.cpp.o: ../externals/binaryen/src/support/colors.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/opt/eos2/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object externals/binaryen/src/support/CMakeFiles/support.dir/colors.cpp.o"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/support.dir/colors.cpp.o -c /opt/eos2/eos/externals/binaryen/src/support/colors.cpp

externals/binaryen/src/support/CMakeFiles/support.dir/colors.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/support.dir/colors.cpp.i"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/eos2/eos/externals/binaryen/src/support/colors.cpp > CMakeFiles/support.dir/colors.cpp.i

externals/binaryen/src/support/CMakeFiles/support.dir/colors.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/support.dir/colors.cpp.s"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/eos2/eos/externals/binaryen/src/support/colors.cpp -o CMakeFiles/support.dir/colors.cpp.s

externals/binaryen/src/support/CMakeFiles/support.dir/colors.cpp.o.requires:

.PHONY : externals/binaryen/src/support/CMakeFiles/support.dir/colors.cpp.o.requires

externals/binaryen/src/support/CMakeFiles/support.dir/colors.cpp.o.provides: externals/binaryen/src/support/CMakeFiles/support.dir/colors.cpp.o.requires
	$(MAKE) -f externals/binaryen/src/support/CMakeFiles/support.dir/build.make externals/binaryen/src/support/CMakeFiles/support.dir/colors.cpp.o.provides.build
.PHONY : externals/binaryen/src/support/CMakeFiles/support.dir/colors.cpp.o.provides

externals/binaryen/src/support/CMakeFiles/support.dir/colors.cpp.o.provides.build: externals/binaryen/src/support/CMakeFiles/support.dir/colors.cpp.o


externals/binaryen/src/support/CMakeFiles/support.dir/command-line.cpp.o: externals/binaryen/src/support/CMakeFiles/support.dir/flags.make
externals/binaryen/src/support/CMakeFiles/support.dir/command-line.cpp.o: ../externals/binaryen/src/support/command-line.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/opt/eos2/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object externals/binaryen/src/support/CMakeFiles/support.dir/command-line.cpp.o"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/support.dir/command-line.cpp.o -c /opt/eos2/eos/externals/binaryen/src/support/command-line.cpp

externals/binaryen/src/support/CMakeFiles/support.dir/command-line.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/support.dir/command-line.cpp.i"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/eos2/eos/externals/binaryen/src/support/command-line.cpp > CMakeFiles/support.dir/command-line.cpp.i

externals/binaryen/src/support/CMakeFiles/support.dir/command-line.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/support.dir/command-line.cpp.s"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/eos2/eos/externals/binaryen/src/support/command-line.cpp -o CMakeFiles/support.dir/command-line.cpp.s

externals/binaryen/src/support/CMakeFiles/support.dir/command-line.cpp.o.requires:

.PHONY : externals/binaryen/src/support/CMakeFiles/support.dir/command-line.cpp.o.requires

externals/binaryen/src/support/CMakeFiles/support.dir/command-line.cpp.o.provides: externals/binaryen/src/support/CMakeFiles/support.dir/command-line.cpp.o.requires
	$(MAKE) -f externals/binaryen/src/support/CMakeFiles/support.dir/build.make externals/binaryen/src/support/CMakeFiles/support.dir/command-line.cpp.o.provides.build
.PHONY : externals/binaryen/src/support/CMakeFiles/support.dir/command-line.cpp.o.provides

externals/binaryen/src/support/CMakeFiles/support.dir/command-line.cpp.o.provides.build: externals/binaryen/src/support/CMakeFiles/support.dir/command-line.cpp.o


externals/binaryen/src/support/CMakeFiles/support.dir/file.cpp.o: externals/binaryen/src/support/CMakeFiles/support.dir/flags.make
externals/binaryen/src/support/CMakeFiles/support.dir/file.cpp.o: ../externals/binaryen/src/support/file.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/opt/eos2/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object externals/binaryen/src/support/CMakeFiles/support.dir/file.cpp.o"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/support.dir/file.cpp.o -c /opt/eos2/eos/externals/binaryen/src/support/file.cpp

externals/binaryen/src/support/CMakeFiles/support.dir/file.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/support.dir/file.cpp.i"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/eos2/eos/externals/binaryen/src/support/file.cpp > CMakeFiles/support.dir/file.cpp.i

externals/binaryen/src/support/CMakeFiles/support.dir/file.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/support.dir/file.cpp.s"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/eos2/eos/externals/binaryen/src/support/file.cpp -o CMakeFiles/support.dir/file.cpp.s

externals/binaryen/src/support/CMakeFiles/support.dir/file.cpp.o.requires:

.PHONY : externals/binaryen/src/support/CMakeFiles/support.dir/file.cpp.o.requires

externals/binaryen/src/support/CMakeFiles/support.dir/file.cpp.o.provides: externals/binaryen/src/support/CMakeFiles/support.dir/file.cpp.o.requires
	$(MAKE) -f externals/binaryen/src/support/CMakeFiles/support.dir/build.make externals/binaryen/src/support/CMakeFiles/support.dir/file.cpp.o.provides.build
.PHONY : externals/binaryen/src/support/CMakeFiles/support.dir/file.cpp.o.provides

externals/binaryen/src/support/CMakeFiles/support.dir/file.cpp.o.provides.build: externals/binaryen/src/support/CMakeFiles/support.dir/file.cpp.o


externals/binaryen/src/support/CMakeFiles/support.dir/safe_integer.cpp.o: externals/binaryen/src/support/CMakeFiles/support.dir/flags.make
externals/binaryen/src/support/CMakeFiles/support.dir/safe_integer.cpp.o: ../externals/binaryen/src/support/safe_integer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/opt/eos2/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object externals/binaryen/src/support/CMakeFiles/support.dir/safe_integer.cpp.o"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/support.dir/safe_integer.cpp.o -c /opt/eos2/eos/externals/binaryen/src/support/safe_integer.cpp

externals/binaryen/src/support/CMakeFiles/support.dir/safe_integer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/support.dir/safe_integer.cpp.i"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/eos2/eos/externals/binaryen/src/support/safe_integer.cpp > CMakeFiles/support.dir/safe_integer.cpp.i

externals/binaryen/src/support/CMakeFiles/support.dir/safe_integer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/support.dir/safe_integer.cpp.s"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/eos2/eos/externals/binaryen/src/support/safe_integer.cpp -o CMakeFiles/support.dir/safe_integer.cpp.s

externals/binaryen/src/support/CMakeFiles/support.dir/safe_integer.cpp.o.requires:

.PHONY : externals/binaryen/src/support/CMakeFiles/support.dir/safe_integer.cpp.o.requires

externals/binaryen/src/support/CMakeFiles/support.dir/safe_integer.cpp.o.provides: externals/binaryen/src/support/CMakeFiles/support.dir/safe_integer.cpp.o.requires
	$(MAKE) -f externals/binaryen/src/support/CMakeFiles/support.dir/build.make externals/binaryen/src/support/CMakeFiles/support.dir/safe_integer.cpp.o.provides.build
.PHONY : externals/binaryen/src/support/CMakeFiles/support.dir/safe_integer.cpp.o.provides

externals/binaryen/src/support/CMakeFiles/support.dir/safe_integer.cpp.o.provides.build: externals/binaryen/src/support/CMakeFiles/support.dir/safe_integer.cpp.o


externals/binaryen/src/support/CMakeFiles/support.dir/threads.cpp.o: externals/binaryen/src/support/CMakeFiles/support.dir/flags.make
externals/binaryen/src/support/CMakeFiles/support.dir/threads.cpp.o: ../externals/binaryen/src/support/threads.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/opt/eos2/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object externals/binaryen/src/support/CMakeFiles/support.dir/threads.cpp.o"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/support.dir/threads.cpp.o -c /opt/eos2/eos/externals/binaryen/src/support/threads.cpp

externals/binaryen/src/support/CMakeFiles/support.dir/threads.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/support.dir/threads.cpp.i"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/eos2/eos/externals/binaryen/src/support/threads.cpp > CMakeFiles/support.dir/threads.cpp.i

externals/binaryen/src/support/CMakeFiles/support.dir/threads.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/support.dir/threads.cpp.s"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/eos2/eos/externals/binaryen/src/support/threads.cpp -o CMakeFiles/support.dir/threads.cpp.s

externals/binaryen/src/support/CMakeFiles/support.dir/threads.cpp.o.requires:

.PHONY : externals/binaryen/src/support/CMakeFiles/support.dir/threads.cpp.o.requires

externals/binaryen/src/support/CMakeFiles/support.dir/threads.cpp.o.provides: externals/binaryen/src/support/CMakeFiles/support.dir/threads.cpp.o.requires
	$(MAKE) -f externals/binaryen/src/support/CMakeFiles/support.dir/build.make externals/binaryen/src/support/CMakeFiles/support.dir/threads.cpp.o.provides.build
.PHONY : externals/binaryen/src/support/CMakeFiles/support.dir/threads.cpp.o.provides

externals/binaryen/src/support/CMakeFiles/support.dir/threads.cpp.o.provides.build: externals/binaryen/src/support/CMakeFiles/support.dir/threads.cpp.o


# Object files for target support
support_OBJECTS = \
"CMakeFiles/support.dir/archive.cpp.o" \
"CMakeFiles/support.dir/bits.cpp.o" \
"CMakeFiles/support.dir/colors.cpp.o" \
"CMakeFiles/support.dir/command-line.cpp.o" \
"CMakeFiles/support.dir/file.cpp.o" \
"CMakeFiles/support.dir/safe_integer.cpp.o" \
"CMakeFiles/support.dir/threads.cpp.o"

# External object files for target support
support_EXTERNAL_OBJECTS =

externals/binaryen/lib/libsupport.a: externals/binaryen/src/support/CMakeFiles/support.dir/archive.cpp.o
externals/binaryen/lib/libsupport.a: externals/binaryen/src/support/CMakeFiles/support.dir/bits.cpp.o
externals/binaryen/lib/libsupport.a: externals/binaryen/src/support/CMakeFiles/support.dir/colors.cpp.o
externals/binaryen/lib/libsupport.a: externals/binaryen/src/support/CMakeFiles/support.dir/command-line.cpp.o
externals/binaryen/lib/libsupport.a: externals/binaryen/src/support/CMakeFiles/support.dir/file.cpp.o
externals/binaryen/lib/libsupport.a: externals/binaryen/src/support/CMakeFiles/support.dir/safe_integer.cpp.o
externals/binaryen/lib/libsupport.a: externals/binaryen/src/support/CMakeFiles/support.dir/threads.cpp.o
externals/binaryen/lib/libsupport.a: externals/binaryen/src/support/CMakeFiles/support.dir/build.make
externals/binaryen/lib/libsupport.a: externals/binaryen/src/support/CMakeFiles/support.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/opt/eos2/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX static library ../../lib/libsupport.a"
	cd /opt/eos2/eos/build/externals/binaryen/src/support && $(CMAKE_COMMAND) -P CMakeFiles/support.dir/cmake_clean_target.cmake
	cd /opt/eos2/eos/build/externals/binaryen/src/support && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/support.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
externals/binaryen/src/support/CMakeFiles/support.dir/build: externals/binaryen/lib/libsupport.a

.PHONY : externals/binaryen/src/support/CMakeFiles/support.dir/build

externals/binaryen/src/support/CMakeFiles/support.dir/requires: externals/binaryen/src/support/CMakeFiles/support.dir/archive.cpp.o.requires
externals/binaryen/src/support/CMakeFiles/support.dir/requires: externals/binaryen/src/support/CMakeFiles/support.dir/bits.cpp.o.requires
externals/binaryen/src/support/CMakeFiles/support.dir/requires: externals/binaryen/src/support/CMakeFiles/support.dir/colors.cpp.o.requires
externals/binaryen/src/support/CMakeFiles/support.dir/requires: externals/binaryen/src/support/CMakeFiles/support.dir/command-line.cpp.o.requires
externals/binaryen/src/support/CMakeFiles/support.dir/requires: externals/binaryen/src/support/CMakeFiles/support.dir/file.cpp.o.requires
externals/binaryen/src/support/CMakeFiles/support.dir/requires: externals/binaryen/src/support/CMakeFiles/support.dir/safe_integer.cpp.o.requires
externals/binaryen/src/support/CMakeFiles/support.dir/requires: externals/binaryen/src/support/CMakeFiles/support.dir/threads.cpp.o.requires

.PHONY : externals/binaryen/src/support/CMakeFiles/support.dir/requires

externals/binaryen/src/support/CMakeFiles/support.dir/clean:
	cd /opt/eos2/eos/build/externals/binaryen/src/support && $(CMAKE_COMMAND) -P CMakeFiles/support.dir/cmake_clean.cmake
.PHONY : externals/binaryen/src/support/CMakeFiles/support.dir/clean

externals/binaryen/src/support/CMakeFiles/support.dir/depend:
	cd /opt/eos2/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/eos2/eos /opt/eos2/eos/externals/binaryen/src/support /opt/eos2/eos/build /opt/eos2/eos/build/externals/binaryen/src/support /opt/eos2/eos/build/externals/binaryen/src/support/CMakeFiles/support.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : externals/binaryen/src/support/CMakeFiles/support.dir/depend

