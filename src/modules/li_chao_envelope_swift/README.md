# Dynamic Li Chao Segment Tree for Lower-Envelope Line Queries (`li_chao_envelope_swift`)

> Category: **Convex Hull Optimization** | Language: **Swift 5.10+**

## Overview

Stores dominant affine lines y = m*x + b at segment midpoints over [0, X) to answer lower-envelope queries in O(log X).

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(log X) line insertion and point minimum query` |
| **Space Complexity** | `O(X)` |

## Mathematical & Safety Invariants

- Point query returns exact min_i (m_i * x + b_i) across all inserted lines.

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
