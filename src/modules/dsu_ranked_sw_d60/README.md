# Sendable Path-Halving Union-by-Rank Disjoint Set Partition (`dsu_ranked_sw_d60`)

> Category: **Disjoint Sets** | Language: **Swift 5.10+**

## Overview

Tracks dynamic connected components and component cardinalities using iterative path-halving find and union-by-size merging.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(alpha(N)) amortized union and connected check` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Sum of component sizes remains identically equal to N after every merge.

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
