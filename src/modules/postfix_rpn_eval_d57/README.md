# Reverse Polish Notation Checked Stack Evaluator (`postfix_rpn_eval_d57`)

> Category: **Expression Evaluation** | Language: **Swift 5.10+**

## Overview

Evaluates space-free RPN arithmetic token arrays supporting +, -, *, / with explicit stack underflow & division-by-zero checks.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N) token scan` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Valid RPN expressions evaluate identically to parenthesized infix expressions.

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
