# Rubinchik-Shur Eertree Distinct Palindromic Automaton in Swift (`eertree_palindrome_swift`)

> Category: **String Automata** | Language: **Swift 5.10+**

## Overview

Maintains length -1 and 0 roots with palindrome suffix links to discover all distinct palindromic substrings in O(N) time.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N) online palindrome insertion & suffix-link traversal` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Total distinct palindromes equals created non-root state count.

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
