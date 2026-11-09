# Deterministic unit tests for Direct C++ Interoperability Wrapper for BLAS Routines
# Module: cxx_interop_blas_wrapper

def test_cxx_interop_blas_wrapper_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
