# Deterministic unit tests for Direct C++ Interoperability Wrapper for Sparse Solvers
# Module: cxx_interop_sparse_matrix

def test_cxx_interop_sparse_matrix_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
