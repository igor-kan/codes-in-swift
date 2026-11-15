# Layered Kahn Topological Scheduler (`topological_sort_swift`)

> Category: **Graph / Scheduling** | Language: **Swift 5.10+**

## Overview

Deterministic Kahn topological sorter producing both linear task order and parallelizable wave layers, with cycle detection.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(V + E)` |
| **Space Complexity** | `O(V + E)` |

## Mathematical & Safety Invariants

- total emitted vertices across all waves equals vertexCount on acyclic graphs
- for every directed edge u -> v, position(u) < position(v)
- each wave has zero mutual dependencies

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
