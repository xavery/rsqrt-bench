# "Fast inverse square root" benchmark

This is a benchmark of the "fast inverse square root" algorithm found in Quake 3 Arena source code.

I created this because a coworker "kindly suggested" I use this "very optimised function"
in some non-performance-critical code, running on x86. I did not agree and asked them
to provide benchmarks that would prove its superior performance on modern hardware.
They eventually let it go, but I decided to go ahead with the benchmark anyway.

**tl;dr** using it does not seem to make sense on any post-SSE2 (so, practically
any 64-bit) CPU

See `RESULTS.md` for the actual results.
