# American-Flag 8-Bit In-Place MSD Radix Sort for UInt64 Arrays (`radix_sort_msd_swift`)

> Category: **Sorting & Distribution Algorithms** | Language: **Swift 5.10+**

## Overview

Sorts UInt64 slices in-place using cache-friendly 256-bucket American Flag Most-Significant-Digit cycle permutation with automatic small-subarray insertion sort fallback (n <= 24).

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N * 8) linear non-comparison sort` |
| **Space Complexity** | `O(1) stack recursion over 8-byte key width` |

## Mathematical & Safety Invariants

- Output ordering matches Swift standard Array.sorted() element-for-element.
- Sorted slice preserves exact multiset element conservation.

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
