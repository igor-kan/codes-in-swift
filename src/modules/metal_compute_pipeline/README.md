# Metal Performance Shaders GPU Compute Pipeline (`metal_compute_pipeline`)

## Overview

The `metal_compute_pipeline` module provides high-performance, mathematically rigorous operations for `codes-in-swift`.

### Component Artifacts

- **Type Definitions**: [`types.swift`](./types.swift)
- **Computational Core**: [`core.swift`](./core.swift)
- **Deterministic Unit Tests**: [`tests.swift`](./tests.swift)
- **SIMD Optimizations**: [`perf_simd.swift`](./perf_simd.swift)
- **Microbenchmarks**: [`benchmarks.swift`](./benchmarks.swift)
- **Boundary Validation**: [`boundary.swift`](./boundary.swift)
- **Property Fuzzing**: [`fuzz_invariants.swift`](./fuzz_invariants.swift)

### Computational Invariant

$$f(x) = x \left(1 + \frac{1}{2}x - \frac{1}{8}x^2\right)$$

Maintained under strict continuous integration, sanitizer checks, and memory bounds verification.
