# Knuth-Morris-Pratt Byte Slice Pattern Matcher (`kmp_search_sw_d58`)

> Category: **String Matching** | Language: **Swift 5.10+**

## Overview

Constructs KMP border prefix table pi[i] and reports all zero-indexed occurrence offsets over UTF-8 byte slices cleanly.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(|T| + |P|)` |
| **Space Complexity** | `O(|P|)` |

## Mathematical & Safety Invariants

- Every emitted offset matches exact slice equality against the pattern.

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
