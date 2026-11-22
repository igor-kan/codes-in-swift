# Double-Hash 256-Bit Swift Bloom Membership Filter (`bloom_bitset_sw_d57`)

> Category: **Probabilistic Sets** | Language: **Swift 5.10+**

## Overview

Implements a 256-bit compact Swift value-struct Bloom filter using dual SplitMix probes over 64-bit integers.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(K) probes` |
| **Space Complexity** | `O(4) UInt64 words` |

## Mathematical & Safety Invariants

- Inserted integer elements exhibit zero false negatives cleanly.

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
