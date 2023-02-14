#!/usr/bin/env bash

set -e

cd build/tests
ctest --rerun-failed --output-on-failure
cd ../..
