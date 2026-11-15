# Intrusive Slab LRU Cache (`lru_cache_ordered_swift`)

> Category: **Systems / Caching** | Language: **Swift 5.10+**

## Overview

Zero-pointer-allocation intrusive doubly-linked-list LRU cache stored inside a flat ContiguousArray slab with hit/miss counters.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(1) get/put` |
| **Space Complexity** | `O(capacity)` |

## Mathematical & Safety Invariants

- 0 <= indexMap.count <= capacity
- head and tail form an acyclic doubly-linked chain of length indexMap.count
- sentinel indices stay -1 when cache is empty

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
