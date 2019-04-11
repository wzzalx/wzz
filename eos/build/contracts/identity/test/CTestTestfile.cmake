# CMake generated Testfile for 
# Source directory: /opt/eos2/eos/contracts/identity/test
# Build directory: /opt/eos2/eos/build/contracts/identity/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_identity_test_abi "/opt/eos2/eos/build/scripts/abi_is_json.py" "identity_test.abi")
