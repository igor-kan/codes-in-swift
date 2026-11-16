# Arena-Indexed Implicit Treap Sequence with Lazy Subarray Reversal (`treap_implicit_rope_swift`)

> Category: **Sequence Data Structures** | Language: **Swift 5.10+**

## Overview

Supports dynamic sequence split, concatenate, and O(log N) lazy segment reversals using flat value-semantic arena indices and deterministic SplitMix64 priorities in Swift.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(log N) split, merge, range reverse & range sum` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Double reversal reverse(l, r); reverse(l, r) restores exact initial sequence element-for-element.
- Subtree sum invariant matches flattened array sum at all times.

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
