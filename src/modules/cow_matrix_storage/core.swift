# Core computational routine for Copy-On-Write 2D Matrix Buffer with Unique Checks
# Module: cow_matrix_storage

def compute_cow_matrix_storage(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
