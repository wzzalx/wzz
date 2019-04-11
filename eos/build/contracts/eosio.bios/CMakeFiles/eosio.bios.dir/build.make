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

# Utility rule file for eosio.bios.

# Include the progress variables for this target.
include contracts/eosio.bios/CMakeFiles/eosio.bios.dir/progress.make

contracts/eosio.bios/CMakeFiles/eosio.bios: contracts/eosio.bios/eosio.bios.wast.hpp
contracts/eosio.bios/CMakeFiles/eosio.bios: contracts/eosio.bios/eosio.bios.abi.hpp
contracts/eosio.bios/CMakeFiles/eosio.bios: contracts/eosio.bios/eosio.bios.wasm


contracts/eosio.bios/eosio.bios.wast.hpp: contracts/eosio.bios/eosio.bios.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/opt/eos2/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating eosio.bios.wast.hpp"
	cd /opt/eos2/eos/build/contracts/eosio.bios && echo "const char* const eosio_bios_wast = R\"=====(" > /opt/eos2/eos/build/contracts/eosio.bios/eosio.bios.wast.hpp
	cd /opt/eos2/eos/build/contracts/eosio.bios && cat /opt/eos2/eos/build/contracts/eosio.bios/eosio.bios.wast >> /opt/eos2/eos/build/contracts/eosio.bios/eosio.bios.wast.hpp
	cd /opt/eos2/eos/build/contracts/eosio.bios && echo ")=====\";" >> /opt/eos2/eos/build/contracts/eosio.bios/eosio.bios.wast.hpp

contracts/eosio.bios/eosio.bios.abi.hpp: contracts/eosio.bios/eosio.bios.abi
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/opt/eos2/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating eosio.bios.abi.hpp"
	cd /opt/eos2/eos/build/contracts/eosio.bios && echo "const char* const eosio_bios_abi = R\"=====(" > /opt/eos2/eos/build/contracts/eosio.bios/eosio.bios.abi.hpp
	cd /opt/eos2/eos/build/contracts/eosio.bios && cat /opt/eos2/eos/build/contracts/eosio.bios/eosio.bios.abi >> /opt/eos2/eos/build/contracts/eosio.bios/eosio.bios.abi.hpp
	cd /opt/eos2/eos/build/contracts/eosio.bios && echo ")=====\";" >> /opt/eos2/eos/build/contracts/eosio.bios/eosio.bios.abi.hpp

contracts/eosio.bios/eosio.bios.wasm: contracts/eosio.bios/eosio.bios.wast.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/opt/eos2/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating WASM eosio.bios.wasm"
	cd /opt/eos2/eos/build/contracts/eosio.bios && /opt/eos2/eos/build/libraries/wasm-jit/Source/Programs/eosio-wast2wasm /opt/eos2/eos/build/contracts/eosio.bios/eosio.bios.wast /opt/eos2/eos/build/contracts/eosio.bios/eosio.bios.wasm -n

contracts/eosio.bios/eosio.bios.wast: contracts/eosio.bios/eosio.bios.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/opt/eos2/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating WAST eosio.bios.wast"
	cd /opt/eos2/eos/build/contracts/eosio.bios && /opt/eos2/eos/build/externals/binaryen/bin/eosio-s2wasm -o /opt/eos2/eos/build/contracts/eosio.bios/eosio.bios.wast -s 10240 eosio.bios.s

contracts/eosio.bios/eosio.bios.s: contracts/eosio.bios/eosio.bios.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/opt/eos2/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating textual assembly eosio.bios.s"
	cd /opt/eos2/eos/build/contracts/eosio.bios && /root/opt/wasm/bin/llc -thread-model=single -asm-verbose=false -o eosio.bios.s eosio.bios.bc

contracts/eosio.bios/eosio.bios.bc: contracts/eosio.bios/eosio.bios.cpp.bc
contracts/eosio.bios/eosio.bios.bc: contracts/libc++/libc++.bc
contracts/eosio.bios/eosio.bios.bc: contracts/musl/libc.bc
contracts/eosio.bios/eosio.bios.bc: contracts/eosiolib/eosiolib.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/opt/eos2/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking LLVM bitcode executable eosio.bios.bc"
	cd /opt/eos2/eos/build/contracts/eosio.bios && /root/opt/wasm/bin/llvm-link -only-needed -o eosio.bios.bc eosio.bios.cpp.bc /opt/eos2/eos/build/contracts/libc++/libc++.bc /opt/eos2/eos/build/contracts/musl/libc.bc /opt/eos2/eos/build/contracts/eosiolib/eosiolib.bc

contracts/eosio.bios/eosio.bios.cpp.bc: ../contracts/eosio.bios/eosio.bios.cpp
contracts/eosio.bios/eosio.bios.cpp.bc: ../contracts/eosio.bios/eosio.bios.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/opt/eos2/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building LLVM bitcode eosio.bios.cpp.bc"
	cd /opt/eos2/eos/build/contracts/eosio.bios && /root/opt/wasm/bin/clang -emit-llvm -O3 --std=c++14 --target=wasm32 -ffreestanding -nostdlib -nostdlibinc -DBOOST_DISABLE_ASSERTS -DBOOST_EXCEPTION_DISABLE -fno-threadsafe-statics -fno-rtti -fno-exceptions -c /opt/eos2/eos/contracts/eosio.bios/eosio.bios.cpp -o eosio.bios.cpp.bc -Weverything -Wno-c++98-compat -Wno-old-style-cast -Wno-vla -Wno-vla-extension -Wno-c++98-compat-pedantic -Wno-missing-prototypes -Wno-missing-variable-declarations -Wno-packed -Wno-padded -Wno-c99-extensions -Wno-documentation-unknown-command -I /opt/eos2/eos/contracts -I /opt/eos2/eos/externals/magic_get/include -isystem /opt/eos2/eos/contracts/libc++/upstream/include -isystem /opt/eos2/eos/contracts/musl/upstream/include -isystem /root/opt/boost/include

eosio.bios: contracts/eosio.bios/CMakeFiles/eosio.bios
eosio.bios: contracts/eosio.bios/eosio.bios.wast.hpp
eosio.bios: contracts/eosio.bios/eosio.bios.abi.hpp
eosio.bios: contracts/eosio.bios/eosio.bios.wasm
eosio.bios: contracts/eosio.bios/eosio.bios.wast
eosio.bios: contracts/eosio.bios/eosio.bios.s
eosio.bios: contracts/eosio.bios/eosio.bios.bc
eosio.bios: contracts/eosio.bios/eosio.bios.cpp.bc
eosio.bios: contracts/eosio.bios/CMakeFiles/eosio.bios.dir/build.make

.PHONY : eosio.bios

# Rule to build all files generated by this target.
contracts/eosio.bios/CMakeFiles/eosio.bios.dir/build: eosio.bios

.PHONY : contracts/eosio.bios/CMakeFiles/eosio.bios.dir/build

contracts/eosio.bios/CMakeFiles/eosio.bios.dir/clean:
	cd /opt/eos2/eos/build/contracts/eosio.bios && $(CMAKE_COMMAND) -P CMakeFiles/eosio.bios.dir/cmake_clean.cmake
.PHONY : contracts/eosio.bios/CMakeFiles/eosio.bios.dir/clean

contracts/eosio.bios/CMakeFiles/eosio.bios.dir/depend:
	cd /opt/eos2/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/eos2/eos /opt/eos2/eos/contracts/eosio.bios /opt/eos2/eos/build /opt/eos2/eos/build/contracts/eosio.bios /opt/eos2/eos/build/contracts/eosio.bios/CMakeFiles/eosio.bios.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/eosio.bios/CMakeFiles/eosio.bios.dir/depend

