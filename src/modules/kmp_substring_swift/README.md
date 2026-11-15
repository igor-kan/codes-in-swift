# Knuth-Morris-Pratt Byte Matcher (`kmp_substring_swift`)

> Category: **Strings / Pattern Matching** | Language: **Swift 5.10+**

## Overview

Linear-time UTF-8 byte-slice KMP substring search with LPS failure table, streaming matcher, and UnsafeBufferPointer fast scan.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(n + m)` |
| **Space Complexity** | `O(m)` |

## Mathematical & Safety Invariants

- lps.count == pattern.count
- 0 <= lps[i] <= i for all i
- every reported index matches pattern bytes exactly

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
