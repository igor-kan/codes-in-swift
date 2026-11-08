# Performance optimizations and vectorization for Persistent Immutable Binary Search Tree with Path Copying
# Module: binary_search_tree_cow
# - Stride-1 sequential memory access
# - In-place scratchpad reuse to avoid garbage collection pressure
# - Cacheline blocking for problem sizes exceeding L2 capacity
