# Jacobi Preconditioned Conjugate Gradient (`conjugate_gradient_swift`)

> Category: **Numerical Linear Algebra** | Language: **Swift 5.10+**

## Overview

Compressed Sparse Row symmetric positive-definite linear solver using Jacobi diagonal preconditioning and residual norm stopping.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(k * nnz)` |
| **Space Complexity** | `O(nnz + n)` |

## Mathematical & Safety Invariants

- CSR rowPointers.count == dimension + 1
- solution vector length equals rhs vector length
- final Euclidean residual is below tolerance when converged

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
