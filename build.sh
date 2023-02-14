#!/usr/bin/env bash

set -e

conan install . -if build --build=missing

cmake -B build -DCMAKE_BUILD_TYPE=Debug
cmake --build build
