# Bottom-Up 2N Iterative Segment Tree Range Minimum (`segment_min_sw_d59`)

> Category: **Segment Trees** | Language: **Swift 5.10+**

## Overview

Stores iterative binary minimum segment trees cleanly over flat 2N Int arrays supporting point assignment and range minimum probes.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(log N) update and [l, r) query` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Half-open [l, r) range min equals exact Swift slice min() cleanly.

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
