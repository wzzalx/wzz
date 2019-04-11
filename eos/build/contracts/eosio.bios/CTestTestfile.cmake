# CMake generated Testfile for 
# Source directory: /opt/eos2/eos/contracts/eosio.bios
# Build directory: /opt/eos2/eos/build/contracts/eosio.bios
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_eosio.bios_abi "/opt/eos2/eos/build/scripts/abi_is_json.py" "/opt/eos2/eos/contracts/eosio.bios/eosio.bios.abi")
