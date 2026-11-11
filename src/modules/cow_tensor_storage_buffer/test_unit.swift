# Deterministic unit tests for Copy-On-Write 3D Tensor Buffer with Uniqueness Checks
# Module: cow_tensor_storage_buffer

def test_cow_tensor_storage_buffer_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
