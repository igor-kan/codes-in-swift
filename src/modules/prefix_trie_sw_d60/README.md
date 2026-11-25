# Contiguous-Arena ASCII Prefix Trie with Longest Word Match (`prefix_trie_sw_d60`)

> Category: **Trie Dictionaries** | Language: **Swift 5.10+**

## Overview

Encodes dictionary strings into value-type arena nodes supporting fast prefix matching without heap reference cycles.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(|S|) insert, exact lookup, and longest terminal prefix search` |
| **Space Complexity** | `O(nodes)` |

## Mathematical & Safety Invariants

- Every inserted word exists cleanly and shortest/longest prefix matches match reference dictionary.

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
