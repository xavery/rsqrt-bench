#include <benchmark/benchmark.h>
#include "rsqrt.h"

#include <array>
#include <random>
#include <limits>
#include <algorithm>

static std::random_device r;
static constexpr std::size_t count_numbers = 1000000;

template<std::size_t N>
std::array<float, N> generate() {
  std::array<float, N> rv;
  std::default_random_engine e(r());
  std::uniform_real_distribution<float> dist(1, std::numeric_limits<float>::max());
  std::generate(std::begin(rv), std::end(rv), [&](){ return dist(e); });
  return rv;
}

static const std::array<float, count_numbers> data = generate<count_numbers>();

template<typename F> void BM_sqrt(benchmark::State& state, F &&func) {
  unsigned int i = 0;
  for (auto _ : state) {
    benchmark::DoNotOptimize(func(data[i++]));
    if (i == count_numbers) i = 0;
  }
}
BENCHMARK_CAPTURE(BM_sqrt, normal_rsqrt_test, rsqrt);
BENCHMARK_CAPTURE(BM_sqrt, quake_rsqrt_test, Q_rsqrt);

BENCHMARK_MAIN();
