# Compressed Radix Prefix Trie (`suffix_trie_radix_swift`)

> Category: **Data Structures / Tries** | Language: **Swift 5.10+**

## Overview

Patricia-style compressed radix trie with shared-prefix edge splitting, longest-prefix search, and lexicographical traversal.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(len(key))` |
| **Space Complexity** | `O(total distinct edge labels)` |

## Mathematical & Safety Invariants

- every internal non-terminal node has at least two outgoing edges
- sibling edge labels never share a non-empty prefix byte
- entryCount matches total stored terminal keys

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
