# Sendable Resizing Circular-Buffer Double-Ended Queue (`ring_deque_sw_d60`)

> Category: **Linear Containers** | Language: **Swift 5.10+**

## Overview

Implements a generic Sendable value-type deque backed by a power-of-two ring buffer with amortized doubling.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(1) amortized pushFront/pushBack/popFront/popBack` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- FIFO/LIFO semantics hold symmetrically across head and tail mutations.

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
