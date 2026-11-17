# Conservative Count-Min Frequency Sketch (`count_min_sketch_swift`)

> Category: **Streaming Sketches** | Language: **Swift 5.10+**

## Overview

Implements a conservative-update Count-Min Sketch using SplitMix64 row hashing to estimate stream multiplicities with zero underestimation.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(D) independent hash bucket updates` |
| **Space Complexity** | `O(D * W)` |

## Mathematical & Safety Invariants

- Estimated frequency never underestimates true inserted frequency.

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
