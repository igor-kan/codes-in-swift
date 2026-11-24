# Modular Rolling-Hash Byte Pattern Finder (`rabin_karp_sw_d59`)

> Category: **Rolling Hashing** | Language: **Swift 5.10+**

## Overview

Computes sliding modular polynomial hashes modulo 1_000_000_007 verifying exact byte slice equality on candidate hash matches.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(|T| + |P|) expected` |
| **Space Complexity** | `O(1)` |

## Mathematical & Safety Invariants

- Returned match indices strictly reproduce exact slice equality.

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
