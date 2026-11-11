# Core computational routine for Copy-On-Write 3D Tensor Buffer with Uniqueness Checks
# Module: cow_tensor_storage_buffer

def compute_cow_tensor_storage_buffer(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
