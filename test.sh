#!/usr/bin/env bash

cd build/tests
ctest --rerun-failed --output-on-failure
cd ../..
