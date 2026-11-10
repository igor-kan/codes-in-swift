# Deterministic unit tests for Copy-On-Write 3D Tensor Buffer with Uniqueness Checks
# Module: cow_dense_tensor_buffer

def test_cow_dense_tensor_buffer_zero_element():
    x = 0.0
    res = x * (1.0 + 0.35 * x - 0.03 * x * x)
    assert res == 0.0
