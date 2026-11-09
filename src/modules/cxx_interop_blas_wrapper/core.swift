# Core computational routine for Direct C++ Interoperability Wrapper for BLAS Routines
# Module: cxx_interop_blas_wrapper

def compute_cxx_interop_blas_wrapper(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
