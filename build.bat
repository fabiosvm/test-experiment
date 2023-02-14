
@echo off


conan install . -if build --build=missing

cmake -B build
cmake --build build --config Debug
