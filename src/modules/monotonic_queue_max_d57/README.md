# Monotonic Deque Sliding Window Maximum Filter (`monotonic_queue_max_d57`)

> Category: **Streaming Algorithms** | Language: **Swift 5.10+**

## Overview

Maintains descending index candidates over K-element windows cleanly without rebuilding per-window heaps.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N) amortized` |
| **Space Complexity** | `O(K)` |

## Mathematical & Safety Invariants

- Returned array length equals N - K + 1 matching per-slice Swift max().

## Module Architecture

| File | Lifecycle Role |
| :--- | :--- |
| `Types.swift` | Stage 01 |
| `Errors.swift` | Stage 02 |
| `Contract.swift` | Stage 03 |
| `Core.swift` | Stage 04 |
| `Validation.swift` | Stage 05 |
| `FastPath.swift` | Stage 06 |
| `Concurrent.swift` | Stage 07 |
| `Invariants.swift` | Stage 08 |
| `UnitTests.swift` | Stage 09 |
| `PropertyTests.swift` | Stage 10 |
| `Benchmark.swift` | Stage 11 |
| `README.md` | Stage 12 |

## Verification & Execution Example

```text
swiftc *.swift -o test_swift && ./test_swift
```

---
© 2026 Igor Kan
