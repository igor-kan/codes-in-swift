# Boundary validation and exceptional input guarding for Copy-On-Write 3D Tensor Buffer with Uniqueness Checks
# Module: cow_dense_tensor_buffer

def sanitize_cow_dense_tensor_buffer_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
