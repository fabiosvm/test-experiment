cmake_minimum_required(VERSION 3.10)

project(test-experiment)

set(CMAKE_C_STANDARD 99)

if(MSVC)
  add_compile_options(/W4)
else()
  add_compile_options(-Wall -Wextra -pedantic -Werror)
endif()

add_executable(${PROJECT_NAME}
  src/main.c
  src/unit.c)

add_subdirectory(tests)
