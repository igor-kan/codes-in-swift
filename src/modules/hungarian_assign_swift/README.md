# Kuhn-Munkres O(N^3) Hungarian Minimum-Cost Assignment in Swift (`hungarian_assign_swift`)

> Category: **Combinatorial Optimization** | Language: **Swift 5.10+**

## Overview

Solves dense minimum-cost perfect bipartite assignment over N x N cost matrices in O(N^3) time.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N^3) dual-potential augmenting column match` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Minimum primal cost matches exact negated dual sum -v[0].

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
