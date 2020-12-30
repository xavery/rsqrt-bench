cmake_minimum_required (VERSION 3.5.1)
project(rsqrt_bench C CXX)

find_package(Threads)

add_executable(bench rsqrt.c bench.cpp)

set_property(TARGET bench
  PROPERTY C_STANDARD 99
  PROPERTY C_STANDARD_REQUIRED TRUE
  PROPERTY C_EXTENSIONS FALSE
  PROPERTY CXX_STANDARD 11
  PROPERTY CXX_STANDARD_REQUIRED TRUE
  PROPERTY CXX_EXTENSIONS FALSE
)

target_link_libraries(bench 
  ${CMAKE_SOURCE_DIR}/benchmark/build/src/libbenchmark.a
  ${CMAKE_THREAD_LIBS_INIT}
)
target_include_directories(bench PRIVATE benchmark/include)
