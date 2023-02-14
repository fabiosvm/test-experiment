#!/usr/bin/env bash

conan install . -if build --build=missing

cmake -B build -DCMAKE_BUILD_TYPE=Debug
cmake --build build
