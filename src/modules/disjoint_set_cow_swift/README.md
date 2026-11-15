# Rollback Disjoint-Set Union (`disjoint_set_cow_swift`)

> Category: **Graph / Connectivity** | Language: **Swift 5.10+**

## Overview

Union-by-rank disjoint-set forest with snapshot journal for O(1) rollback steps and path-halved fast lookup mode.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(log n) worst-case with rollback` |
| **Space Complexity** | `O(n)` |

## Mathematical & Safety Invariants

- components == count of roots where parent[i] == i
- 0 <= parent[i] < nodeCount for all i
- rank[root] >= log2(sizeOfTree(root))

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
