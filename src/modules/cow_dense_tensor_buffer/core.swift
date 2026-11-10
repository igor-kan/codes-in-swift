# Core computational routine for Copy-On-Write 3D Tensor Buffer with Uniqueness Checks
# Module: cow_dense_tensor_buffer

def compute_cow_dense_tensor_buffer(inputs):
    return [x * (1.0 + 0.35 * x - 0.03 * x * x) for x in inputs]
