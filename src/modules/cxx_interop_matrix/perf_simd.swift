# Performance optimizations and vectorization for Direct C++ Interoperability Wrapper for Fast Linear Algebra
# Module: cxx_interop_matrix
# - Stride-1 sequential memory access
# - In-place scratchpad reuse to avoid garbage collection pressure
# - Cacheline blocking for problem sizes exceeding L2 capacity
