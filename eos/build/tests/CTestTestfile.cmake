# CMake generated Testfile for 
# Source directory: /opt/eos2/eos/tests
# Build directory: /opt/eos2/eos/build/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(plugin_test "/opt/eos2/eos/build/tests/plugin_test" "--report_level=detailed" "--color_output")
add_test(nodeos_sanity_test "tests/nodeos_run_test.py" "-v" "--sanity-test" "--clean-run" "--dump-error-detail")
set_tests_properties(nodeos_sanity_test PROPERTIES  WORKING_DIRECTORY "/opt/eos2/eos/build")
add_test(nodeos_run_test "tests/nodeos_run_test.py" "-v" "--clean-run" "--dump-error-detail")
set_tests_properties(nodeos_run_test PROPERTIES  WORKING_DIRECTORY "/opt/eos2/eos/build")
add_test(p2p_dawn515_test "tests/p2p_tests/dawn_515/test.sh")
set_tests_properties(p2p_dawn515_test PROPERTIES  WORKING_DIRECTORY "/opt/eos2/eos/build")
add_test(nodeos_run_test-mongodb "tests/nodeos_run_test.py" "--mongodb" "-v" "--clean-run" "--dump-error-detail")
set_tests_properties(nodeos_run_test-mongodb PROPERTIES  WORKING_DIRECTORY "/opt/eos2/eos/build")
add_test(distributed-transactions-test "tests/distributed-transactions-test.py" "-d" "2" "-p" "1" "-n" "4" "-v" "--clean-run" "--dump-error-detail")
set_tests_properties(distributed-transactions-test PROPERTIES  WORKING_DIRECTORY "/opt/eos2/eos/build")
add_test(restart-scenarios-test-resync "tests/restart-scenarios-test.py" "-c" "resync" "-p4" "-v" "--clean-run" "--dump-error-details")
set_tests_properties(restart-scenarios-test-resync PROPERTIES  WORKING_DIRECTORY "/opt/eos2/eos/build")
add_test(restart-scenarios-test-hard_replay "tests/restart-scenarios-test.py" "-c" "hardReplay" "-p4" "-v" "--clean-run" "--dump-error-details")
set_tests_properties(restart-scenarios-test-hard_replay PROPERTIES  WORKING_DIRECTORY "/opt/eos2/eos/build")
add_test(restart-scenarios-test-none "tests/restart-scenarios-test.py" "-c" "none" "--kill-sig" "term" "-p4" "-v" "--clean-run" "--dump-error-details")
set_tests_properties(restart-scenarios-test-none PROPERTIES  WORKING_DIRECTORY "/opt/eos2/eos/build")
add_test(validate_dirty_db_test "tests/validate-dirty-db.py" "-v" "--clean-run" "--dump-error-detail")
set_tests_properties(validate_dirty_db_test PROPERTIES  WORKING_DIRECTORY "/opt/eos2/eos/build")
add_test(nodeos_sanity_lr_test "tests/nodeos_run_test.py" "-v" "--sanity-test" "--clean-run" "--dump-error-detail")
set_tests_properties(nodeos_sanity_lr_test PROPERTIES  LABELS "long_running_tests" WORKING_DIRECTORY "/opt/eos2/eos/build")
add_test(nodeos_voting_lr_test "tests/nodeos_voting_test.py" "-v" "--clean-run" "--dump-error-detail")
set_tests_properties(nodeos_voting_lr_test PROPERTIES  LABELS "long_running_tests" WORKING_DIRECTORY "/opt/eos2/eos/build")
