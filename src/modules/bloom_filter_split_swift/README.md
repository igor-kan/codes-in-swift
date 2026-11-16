# Kirsch-Mitzenmacher Double-Hashing SplitMix64 Bloom Filter in Swift (`bloom_filter_split_swift`)

> Category: **Probabilistic Membership Structures** | Language: **Swift 5.10+**

## Overview

Computes optimal bit-array sizing from (expectedItems, targetFPR) and performs k hash probes via Kirsch-Mitzenmacher linear combination h1 + i * h2 on a single SplitMix64 digest.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(k) bit probes per insert/contains` |
| **Space Complexity** | `O(m / 8) bytes packed [UInt64]` |

## Mathematical & Safety Invariants

- Zero false negatives for all inserted 64-bit identifiers.
- Merging equal-sized Bloom filters satisfies bitwise OR idempotence.

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
