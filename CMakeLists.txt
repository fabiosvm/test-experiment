cmake_minimum_required(VERSION 3.10)

project(test-experiment)

set(CMAKE_C_STANDARD 99)

if(MSVC)
  add_compile_options(/W4)
else()
  add_compile_options(-Wall -Wextra -pedantic -Werror)
endif()

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(${PROJECT_NAME}
  src/main.c
  src/unit.c)

target_link_libraries(${PROJECT_NAME} ${CONAN_LIBS})

add_subdirectory(tests)
