cmake_minimum_required (VERSION 3.5.1)
project(rsqrt_bench C CXX)

find_package(Threads)

set(BENCHMARK_ENABLE_GTEST_TESTS OFF)
add_subdirectory(benchmark)
add_executable(bench rsqrt.c bench.cpp)

set_property(TARGET bench
  PROPERTY C_STANDARD 99
  PROPERTY C_STANDARD_REQUIRED TRUE
  PROPERTY C_EXTENSIONS FALSE
  PROPERTY CXX_STANDARD 11
  PROPERTY CXX_STANDARD_REQUIRED TRUE
  PROPERTY CXX_EXTENSIONS FALSE
)

target_link_libraries(bench benchmark::benchmark)
