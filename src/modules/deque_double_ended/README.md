# Ring-Buffer Double-Ended Queue (`deque_double_ended`)

> Category: **Data Structures / Containers** | Language: **Swift 5.10+**

## Overview

Power-of-two circular buffer deque with bitmask indexing, contiguous slice iteration, and value-semantic capacity management.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(1) amortized ends` |
| **Space Complexity** | `O(n)` |

## Mathematical & Safety Invariants

- capacity == 0 || (capacity & (capacity - 1)) == 0
- 0 <= count <= capacity
- logical[i] == storage[(head + i) & (capacity - 1)]

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
