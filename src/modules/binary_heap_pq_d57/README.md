# Array-Backed Binary Min-Heap PriorityQueue (`binary_heap_pq_d57`)

> Category: **Priority Queues** | Language: **Swift 5.10+**

## Overview

Implements a value-type generic Swift Comparable binary min-heap supporting siftUp insertion and siftDown extraction.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(log N) push and popMin` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Repeated popMin extracts elements strictly in sorted ascending sequence.

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
