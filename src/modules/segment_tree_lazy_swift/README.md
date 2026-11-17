# Lazy-Propagation Segment Tree (Range Add + Range Sum) (`segment_tree_lazy_swift`)

> Category: **Range Structures** | Language: **Swift 5.10+**

## Overview

Maintains a recursive segment tree with deferred lazy increment tags over contiguous integer slices for O(log N) range increments and sums.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(log N) range update and query` |
| **Space Complexity** | `O(4 * N)` |

## Mathematical & Safety Invariants

- Range query sum equals naive slice sum after arbitrary range updates.

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
