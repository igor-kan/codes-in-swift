# Smooth Nginx-Style Interleaved Weighted Round-Robin Balancer (`smooth_wrr_balancer_swift`)

> Category: **Load Balancing** | Language: **Swift 5.10+**

## Overview

Selects backends in smooth interleaved order proportional to static weights without bursty clustering.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N) current-weight promotion and total-weight subtraction per pick` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Over sum(weights) selections, each server i is picked exactly weight[i] times.

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
