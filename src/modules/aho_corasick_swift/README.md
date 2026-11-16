# Sendable Flat-Array Aho-Corasick Multi-Pattern UTF-8 Matcher (`aho_corasick_swift`)

> Category: **String Searching** | Language: **Swift 5.10+**

## Overview

Compiles multiple UTF-8 byte patterns into a ContiguousArray state machine with failure pointers in pure Sendable value structs without ARC reference cycles.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(Text + Matches + Sum(|P|))` |
| **Space Complexity** | `O(TrieStates * 256)` |

## Mathematical & Safety Invariants

- Matched byte slices equal exact input pattern bytes at reported [start..<end] ranges.
- Zero class retain cycles across automaton nodes.

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
