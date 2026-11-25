# Generic Comparable Min-Heap Priority Queue Value Type (`binary_heap_sw_d60`)

> Category: **Priority Queues** | Language: **Swift 5.10+**

## Overview

Maintains the binary min-heap property over arbitrary Comparable & Sendable elements inside a compact contiguous Swift Array.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(log N) sift-up push and sift-down pop` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Repeatedly popping extracts elements in non-decreasing total order.

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
