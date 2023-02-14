
enable_testing()

add_executable(unit-test
  ../src/unit.c
  unit_test.c)

add_test(NAME unit-test COMMAND unit-test)
target_link_libraries(unit-test ${CONAN_LIBS})
