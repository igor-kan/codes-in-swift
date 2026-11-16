# Copy-on-Write Value-Semantic Ordered B-Tree Dictionary in Swift (`b_tree_cow_swift`)

> Category: **Ordered Search Trees** | Language: **Swift 5.10+**

## Overview

Implements a value-semantic Swift B-Tree (minDegree t = 4) backed by reference-counted node storage with isKnownUniquelyReferenced COW cloning and zero structural mutation leaks across copied dictionaries.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(log N) search & COW insert, O(N) ordered walk` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Mutating a copied BTreeDictionary never modifies previously captured value copies.
- In-order key traversal emits strictly increasing unique keys.

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
