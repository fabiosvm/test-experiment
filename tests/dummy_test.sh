#!/usr/bin/env bash

# This script is used to run a dummy end-to-end test

PATH="../bin/test-experiment"

exec() {
  local cmd="$PATH $@"
  output=$(eval "$cmd" 2>&1)
  exit_code=$?
}

assert_eq() {
  local expected="$1"
  local actual="$2"
  if [[ "$expected" != "$actual" ]]; then
    echo "Expected '$expected' but got '$actual'"
    exit 1
  fi
}

# Success case without arguments
exec
assert_eq 0 $exit_code

# Success case with arguments
exec 0 "foo"
assert_eq 0 $exit_code
assert_eq "foo" $output

# Failure case with arguments
exec 1 "bar"
assert_eq 1 $exit_code
assert_eq "bar" $output
