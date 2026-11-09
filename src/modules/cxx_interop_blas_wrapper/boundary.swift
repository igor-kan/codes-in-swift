# Boundary validation and exceptional input guarding for Direct C++ Interoperability Wrapper for BLAS Routines
# Module: cxx_interop_blas_wrapper

def sanitize_cxx_interop_blas_wrapper_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
