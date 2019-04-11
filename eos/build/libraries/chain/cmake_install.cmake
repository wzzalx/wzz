# Install script for directory: /opt/eos2/eos/libraries/chain

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local/eosio")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/eosio/lib64/libeosio_chain.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/eosio/lib64" TYPE STATIC_LIBRARY FILES "/opt/eos2/eos/build/libraries/chain/libeosio_chain.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/eosio/include/eosio/chain/abi_def.hpp;/usr/local/eosio/include/eosio/chain/abi_serializer.hpp;/usr/local/eosio/include/eosio/chain/account_object.hpp;/usr/local/eosio/include/eosio/chain/action.hpp;/usr/local/eosio/include/eosio/chain/action_receipt.hpp;/usr/local/eosio/include/eosio/chain/apply_context.hpp;/usr/local/eosio/include/eosio/chain/asset.hpp;/usr/local/eosio/include/eosio/chain/authority.hpp;/usr/local/eosio/include/eosio/chain/authority_checker.hpp;/usr/local/eosio/include/eosio/chain/authorization_manager.hpp;/usr/local/eosio/include/eosio/chain/block.hpp;/usr/local/eosio/include/eosio/chain/block_header.hpp;/usr/local/eosio/include/eosio/chain/block_header_state.hpp;/usr/local/eosio/include/eosio/chain/block_log.hpp;/usr/local/eosio/include/eosio/chain/block_state.hpp;/usr/local/eosio/include/eosio/chain/block_summary_object.hpp;/usr/local/eosio/include/eosio/chain/block_timestamp.hpp;/usr/local/eosio/include/eosio/chain/chain_config.hpp;/usr/local/eosio/include/eosio/chain/chain_id_type.hpp;/usr/local/eosio/include/eosio/chain/config.hpp;/usr/local/eosio/include/eosio/chain/contract_table_objects.hpp;/usr/local/eosio/include/eosio/chain/contract_types.hpp;/usr/local/eosio/include/eosio/chain/controller.hpp;/usr/local/eosio/include/eosio/chain/eosio_contract.hpp;/usr/local/eosio/include/eosio/chain/exceptions.hpp;/usr/local/eosio/include/eosio/chain/fixed_key.hpp;/usr/local/eosio/include/eosio/chain/fork_database.hpp;/usr/local/eosio/include/eosio/chain/generated_transaction_object.hpp;/usr/local/eosio/include/eosio/chain/genesis_state.hpp;/usr/local/eosio/include/eosio/chain/global_property_object.hpp;/usr/local/eosio/include/eosio/chain/incremental_merkle.hpp;/usr/local/eosio/include/eosio/chain/merkle.hpp;/usr/local/eosio/include/eosio/chain/multi_index_includes.hpp;/usr/local/eosio/include/eosio/chain/name.hpp;/usr/local/eosio/include/eosio/chain/permission_link_object.hpp;/usr/local/eosio/include/eosio/chain/permission_object.hpp;/usr/local/eosio/include/eosio/chain/producer_object.hpp;/usr/local/eosio/include/eosio/chain/producer_schedule.hpp;/usr/local/eosio/include/eosio/chain/protocol.hpp;/usr/local/eosio/include/eosio/chain/resource_limits.hpp;/usr/local/eosio/include/eosio/chain/resource_limits_private.hpp;/usr/local/eosio/include/eosio/chain/reversible_block_object.hpp;/usr/local/eosio/include/eosio/chain/symbol.hpp;/usr/local/eosio/include/eosio/chain/trace.hpp;/usr/local/eosio/include/eosio/chain/transaction.hpp;/usr/local/eosio/include/eosio/chain/transaction_context.hpp;/usr/local/eosio/include/eosio/chain/transaction_metadata.hpp;/usr/local/eosio/include/eosio/chain/transaction_object.hpp;/usr/local/eosio/include/eosio/chain/types.hpp;/usr/local/eosio/include/eosio/chain/wasm_eosio_binary_ops.hpp;/usr/local/eosio/include/eosio/chain/wasm_eosio_constraints.hpp;/usr/local/eosio/include/eosio/chain/wasm_eosio_injection.hpp;/usr/local/eosio/include/eosio/chain/wasm_eosio_validation.hpp;/usr/local/eosio/include/eosio/chain/wasm_interface.hpp;/usr/local/eosio/include/eosio/chain/wasm_interface_private.hpp;/usr/local/eosio/include/eosio/chain/wast_to_wasm.hpp;/usr/local/eosio/include/eosio/chain/core_symbol.hpp")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/eosio/include/eosio/chain" TYPE FILE FILES
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/abi_def.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/abi_serializer.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/account_object.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/action.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/action_receipt.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/apply_context.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/asset.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/authority.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/authority_checker.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/authorization_manager.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/block.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/block_header.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/block_header_state.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/block_log.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/block_state.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/block_summary_object.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/block_timestamp.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/chain_config.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/chain_id_type.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/config.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/contract_table_objects.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/contract_types.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/controller.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/eosio_contract.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/exceptions.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/fixed_key.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/fork_database.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/generated_transaction_object.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/genesis_state.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/global_property_object.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/incremental_merkle.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/merkle.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/multi_index_includes.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/name.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/permission_link_object.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/permission_object.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/producer_object.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/producer_schedule.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/protocol.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/resource_limits.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/resource_limits_private.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/reversible_block_object.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/symbol.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/trace.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/transaction.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/transaction_context.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/transaction_metadata.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/transaction_object.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/types.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/wasm_eosio_binary_ops.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/wasm_eosio_constraints.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/wasm_eosio_injection.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/wasm_eosio_validation.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/wasm_interface.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/wasm_interface_private.hpp"
    "/opt/eos2/eos/libraries/chain/include/eosio/chain/wast_to_wasm.hpp"
    "/opt/eos2/eos/build/libraries/chain/include/eosio/chain/core_symbol.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/eosio/include/eosio/chain/")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/eosio/include/eosio/chain" TYPE DIRECTORY DIR_PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "")
endif()

