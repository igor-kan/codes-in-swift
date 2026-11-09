# Boundary validation and exceptional input guarding for Copy-On-Write 2D Matrix Buffer with Unique Checks
# Module: cow_matrix_storage

def sanitize_cow_matrix_storage_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
