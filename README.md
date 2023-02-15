
[![CI](https://github.com/fabiosvm/test-experiment/actions/workflows/ci.yml/badge.svg)](https://github.com/fabiosvm/test-experiment/actions/workflows/ci.yml)

# Test Experiment

This project is an experiment aimed at exploring how to build a cross-platform C project that includes both unit and end-to-end tests. To achieve this goal, the project uses the [cmocka](https://cmocka.org/) framework to create and run unit tests, which allows for effective testing of individual functions and modules. For end-to-end testing, the project utilizes [Python](https://www.python.org) scripts, which provide a flexible and powerful way to perform tests that span the entire system. By combining these two types of tests, the project aims to ensure that the code is both functional at a detailed level and working correctly as a whole, across multiple operating systems. With this cross-platform approach, the project will be able to reach a wider audience and ensure that the code is robust and reliable in any environment.

## Requirements

In order to build the project and carry out the tests, you will need the following:

- [CMake](https://cmake.org) 3.10 or higher
- [Conan](https://conan.io/) 1.0 or higher
- [Python3](https://www.python.org) 3.6 or higher

> Additionally, a C99 compatible C compiler is required, which CMake will try to find for the given platform.

## Building

To build the project, type the following command:

```
./build.sh
```

## Testing

To run the tests, type the following command:

```
./test.sh
```

## Cleaning

After building and testing, you can clean the project by typing the following command:

```
./clean.sh
```
