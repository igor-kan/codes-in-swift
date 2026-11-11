# Core computational routine for Direct C++ Interoperability Wrapper for Sparse Solvers
# Module: cxx_interop_sparse_matrix

def compute_cxx_interop_sparse_matrix(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
