#!/usr/bin/env bash

set -e

mkdir -p benchmark/build
pushd benchmark/build
cmake -DCMAKE_BUILD_TYPE=Release -DBENCHMARK_ENABLE_GTEST_TESTS=OFF ..
cmake --build .
popd

rm -fR build
mkdir -p build
pushd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_FLAGS=-march=native \
  -DCMAKE_CXX_FLAGS=-march=native ..
cmake --build .

current_governor=$(cat /sys/devices/system/cpu/cpufreq/policy0/scaling_governor)
sudo cpupower frequency-set --governor performance
./bench
sudo cpupower frequency-set --governor ${current_governor}
popd

