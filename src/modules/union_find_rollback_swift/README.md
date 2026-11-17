# Undo-Log Rollback Disjoint Set Union in Swift (`union_find_rollback_swift`)

> Category: **Dynamic Connectivity** | Language: **Swift 5.10+**

## Overview

Tracks union-by-size parent modifications in an explicit undo stack so component connectivity can be cleanly restored to prior checkpoints.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(log N) union-by-size and O(1) rollback step` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Total vertex count equals sum of root component sizes across rollbacks.

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
