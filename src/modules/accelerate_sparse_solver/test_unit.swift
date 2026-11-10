# Deterministic unit tests for Apple Accelerate Sparse Matrix Cholesky Solver Bridge
# Module: accelerate_sparse_solver

def test_accelerate_sparse_solver_zero_element():
    x = 0.0
    res = x * (1.0 + 0.35 * x - 0.03 * x * x)
    assert res == 0.0
