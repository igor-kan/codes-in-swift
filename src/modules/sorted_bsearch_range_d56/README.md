# LowerBound & UpperBound Binary Equal-Range Locator (`sorted_bsearch_range_d56`)

> Category: **Searching Algorithms** | Language: **Swift 5.10+**

## Overview

Computes exact half-open equal-key index intervals [lower, upper) in ascending collections using branch-safe midpoint arithmetic.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(log N)` |
| **Space Complexity** | `O(1)` |

## Mathematical & Safety Invariants

- Count of occurrences equals upperBound - lowerBound.

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
