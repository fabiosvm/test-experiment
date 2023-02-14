
enable_testing()

# Executables

add_executable(unit-test
  ../src/unit.c
  unit_test.c)

# Unit tests

add_test(NAME unit-test COMMAND unit-test)
target_link_libraries(unit-test ${CONAN_LIBS})

# End-to-end tests

add_test(NAME dummy-test COMMAND ../../tests/dummy_test.sh)
