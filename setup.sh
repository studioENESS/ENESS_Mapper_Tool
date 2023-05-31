#!/bin/bash

sudo apt-get install make g++ cmake libglfw3-dev nlohmann-json-dev ninja-build

mkdir build && cd build
cmake ../ -GNinja
ninja
