# CMake generated Testfile for 
# Source directory: /opt/eos2/eos/contracts/tic_tac_toe
# Build directory: /opt/eos2/eos/build/contracts/tic_tac_toe
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_tic_tac_toe_abi "/opt/eos2/eos/build/scripts/abi_is_json.py" "/opt/eos2/eos/contracts/tic_tac_toe/tic_tac_toe.abi")
