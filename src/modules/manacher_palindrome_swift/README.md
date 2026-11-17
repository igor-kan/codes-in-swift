# Linear-Time ContiguousArray Manacher Palindrome Finder (`manacher_palindrome_swift`)

> Category: **String Algorithms** | Language: **Swift 5.10+**

## Overview

Computes exact odd/even palindrome radii across sentinel-padded UTF-8 byte slices in O(N) time and extracts the longest palindromic slice.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N) mirror-accelerated radius expansion` |
| **Space Complexity** | `O(N) ContiguousArray<Int>` |

## Mathematical & Safety Invariants

- Extracted slice is palindromic and maximal across all substrings.

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
