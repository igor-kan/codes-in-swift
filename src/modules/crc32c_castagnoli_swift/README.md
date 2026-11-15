# Slicing-by-8 CRC-32C Castagnoli (`crc32c_castagnoli_swift`)

> Category: **Checksums / Systems** | Language: **Swift 5.10+**

## Overview

Castagnoli CRC-32C checksum engine featuring an 8-lane lookup table unrolled fast path and GF(2) matrix combine operation.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(n)` |
| **Space Complexity** | `O(1) fixed 8KB table` |

## Mathematical & Safety Invariants

- RFC 3720 check value on ASCII 123456789 equals 0xE3069283
- combine(crc(A), crc(B), len(B)) == crc(A ++ B)
- empty input always yields 0x00000000

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
