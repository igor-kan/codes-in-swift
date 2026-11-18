# 4-Slot 8-Bit Fingerprint Cuckoo Filter in Swift (`cuckoo_filter_fp8_swift`)

> Category: **Probabilistic Filters** | Language: **Swift 5.10+**

## Overview

Stores 8-bit fingerprints in 4-slot buckets using partial-key cuckoo hashing i2 = i1 ^ hash(fp).

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(1) dual-bucket lookup, insert, and delete` |
| **Space Complexity** | `O(B * 4)` |

## Mathematical & Safety Invariants

- Inserted keys always test positive and can be removed cleanly.

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
