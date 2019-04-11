# CMake generated Testfile for 
# Source directory: /opt/eos2/eos/contracts/eosio.sudo
# Build directory: /opt/eos2/eos/build/contracts/eosio.sudo
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_eosio.sudo_abi "/opt/eos2/eos/build/scripts/abi_is_json.py" "/opt/eos2/eos/contracts/eosio.sudo/eosio.sudo.abi")
