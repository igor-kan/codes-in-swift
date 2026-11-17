# Prefix-Doubling Suffix Array & Kasai LCP over [UInt8] (`suffix_array_kasai_swift`)

> Category: **String Indexing** | Language: **Swift 5.10+**

## Overview

Sorts all suffix offsets by doubling prefix ranks and computes adjacent Longest Common Prefix heights in linear time.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) rank doubling + O(N) Kasai LCP` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- All suffixes ordered by SA satisfy strict lexicographical monotonicity.

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
