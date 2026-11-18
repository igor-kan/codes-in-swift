# Hopcroft-Karp O(E sqrt(V)) Maximum Bipartite Matcher in Swift (`hopcroft_karp_bip_swift`)

> Category: **Graph Matching** | Language: **Swift 5.10+**

## Overview

Computes maximum cardinality bipartite matching by finding shortest augmenting path layers via BFS and DFS.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(E * sqrt(V)) layered BFS + vertex-disjoint DFS augmenting paths` |
| **Space Complexity** | `O(V + E)` |

## Mathematical & Safety Invariants

- Matched left and right vertices form a valid bijection of maximum cardinality.

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
