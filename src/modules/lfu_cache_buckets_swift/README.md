# O(1) Frequency-Bucket LFU Eviction Cache in Swift (`lfu_cache_buckets_swift`)

> Category: **Caching** | Language: **Swift 5.10+**

## Overview

Implements Least Frequently Used cache with ordered FIFO tie-breaking per frequency level using array/dictionary bucket chains.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(1) lookup, insertion, and frequency promotion` |
| **Space Complexity** | `O(Capacity)` |

## Mathematical & Safety Invariants

- Active item count never exceeds capacity.

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
