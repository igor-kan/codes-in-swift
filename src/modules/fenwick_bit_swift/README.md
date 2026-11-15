# Fenwick Binary Indexed Tree (`fenwick_bit_swift`)

> Category: **Data Structures / Range Queries** | Language: **Swift 5.10+**

## Overview

1-indexed ContiguousArray Fenwick tree supporting point delta updates, range sum queries, and O(log n) binary lifting order search.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(log n)` |
| **Space Complexity** | `O(n)` |

## Mathematical & Safety Invariants

- tree.count == length + 1
- tree[0] == 0 always
- prefixSum(i) equals exact naive sum of underlying elements

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
