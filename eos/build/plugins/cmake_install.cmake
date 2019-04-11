# Install script for directory: /opt/eos2/eos/plugins

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/opt/eos2/eos/build/plugins/bnet_plugin/cmake_install.cmake")
  include("/opt/eos2/eos/build/plugins/net_plugin/cmake_install.cmake")
  include("/opt/eos2/eos/build/plugins/net_api_plugin/cmake_install.cmake")
  include("/opt/eos2/eos/build/plugins/http_plugin/cmake_install.cmake")
  include("/opt/eos2/eos/build/plugins/http_client_plugin/cmake_install.cmake")
  include("/opt/eos2/eos/build/plugins/chain_plugin/cmake_install.cmake")
  include("/opt/eos2/eos/build/plugins/chain_api_plugin/cmake_install.cmake")
  include("/opt/eos2/eos/build/plugins/producer_plugin/cmake_install.cmake")
  include("/opt/eos2/eos/build/plugins/producer_api_plugin/cmake_install.cmake")
  include("/opt/eos2/eos/build/plugins/history_plugin/cmake_install.cmake")
  include("/opt/eos2/eos/build/plugins/history_api_plugin/cmake_install.cmake")
  include("/opt/eos2/eos/build/plugins/wallet_plugin/cmake_install.cmake")
  include("/opt/eos2/eos/build/plugins/wallet_api_plugin/cmake_install.cmake")
  include("/opt/eos2/eos/build/plugins/txn_test_gen_plugin/cmake_install.cmake")
  include("/opt/eos2/eos/build/plugins/db_size_api_plugin/cmake_install.cmake")
  include("/opt/eos2/eos/build/plugins/mongo_db_plugin/cmake_install.cmake")
  include("/opt/eos2/eos/build/plugins/login_plugin/cmake_install.cmake")

endif()

