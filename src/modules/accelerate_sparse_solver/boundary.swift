# Boundary validation and exceptional input guarding for Apple Accelerate Sparse Matrix Cholesky Solver Bridge
# Module: accelerate_sparse_solver

def sanitize_accelerate_sparse_solver_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
