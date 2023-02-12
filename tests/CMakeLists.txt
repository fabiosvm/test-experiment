
enable_testing()

find_library(CMOCKA_LIBRARY cmocka)

if (NOT CMOCKA_LIBRARY)
  message(FATAL_ERROR "cmocka library not found")
endif()

add_executable(unit-test
  ../src/unit.c
  unit_test.c)

add_test(NAME unit-test COMMAND unit-test)
target_link_libraries(unit-test PRIVATE ${CMOCKA_LIBRARY})
