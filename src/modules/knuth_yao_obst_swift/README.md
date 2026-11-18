# Knuth-Yao Quadrangle-Inequality Optimal Binary Search Tree DP (`knuth_yao_obst_swift`)

> Category: **Dynamic Programming Optimization** | Language: **Swift 5.10+**

## Overview

Uses Knuth's root monotonicity opt[i][j-1] <= opt[i][j] <= opt[i+1][j] to compute optimal binary search tree cost in O(N^2).

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N^2) monotonic root-table interval DP` |
| **Space Complexity** | `O(N^2)` |

## Mathematical & Safety Invariants

- Optimal cost matches cubic interval DP minimum.

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
