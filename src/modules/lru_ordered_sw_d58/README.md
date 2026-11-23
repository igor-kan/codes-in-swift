# Bounded Eviction-Tracked LRU Dictionary Value (`lru_ordered_sw_d58`)

> Category: **Caching** | Language: **Swift 5.10+**

## Overview

Stores key-value pairs under strict capacity ceiling tracking recency stamp counters cleanly without reference cycles.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(1) lookup, bounded eviction` |
| **Space Complexity** | `O(C)` |

## Mathematical & Safety Invariants

- Entry count never exceeds configured capacity and recent gets survive eviction.

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
