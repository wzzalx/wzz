# CMake generated Testfile for 
# Source directory: /opt/eos2/eos/unittests
# Build directory: /opt/eos2/eos/build/unittests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(unit_test_binaryen "/opt/eos2/eos/build/unittests/unit_test" "-t" "!wasm_tests/weighted_cpu_limit_tests" "--report_level=detailed" "--color_output" "--" "--binaryen")
add_test(unit_test_wavm "/opt/eos2/eos/build/unittests/unit_test" "-t" "!wasm_tests/weighted_cpu_limit_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
subdirs("contracts")
