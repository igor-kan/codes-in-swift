# Weighted Path-Halving Disjoint Set Partitioner (`dsu_merge_sw_d58`)

> Category: **Disjoint Sets** | Language: **Swift 5.10+**

## Overview

Maintains vertex equivalence classes with union-by-size and iterative path halving cleanly.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(alpha(N)) amortized` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Merging distinct sets reduces active component count by 1 cleanly.

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
