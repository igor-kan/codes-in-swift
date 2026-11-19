# Linear-Time Knuth-Morris-Pratt Byte Pattern Scanner in Swift (`kmp_pattern_scan_swift`)

> Category: **String Matching** | Language: **Swift 5.10+**

## Overview

Computes the KMP longest-proper-prefix-suffix array over UTF-8 byte slices and emits all matching start offsets in linear time.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N + M) zero-backtrack prefix-function scan` |
| **Space Complexity** | `O(M)` |

## Mathematical & Safety Invariants

- Every emitted start offset matches exact byte slice equality.

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
