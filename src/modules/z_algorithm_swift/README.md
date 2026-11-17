# Linear-Time Z-Array Pattern Matcher & Smallest Period Finder (`z_algorithm_swift`)

> Category: **String Matching** | Language: **Swift 5.10+**

## Overview

Computes exact Z[i] prefix-LCP lengths across UTF-8 byte slices to detect all exact pattern occurrences and smallest string periods.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N + M) Z-box prefix match computation` |
| **Space Complexity** | `O(N + M)` |

## Mathematical & Safety Invariants

- Every emitted match position equals exact slice equality text[i..<i+m] == pat.

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
