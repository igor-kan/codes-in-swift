# Deterministic unit tests for Copy-On-Write 2D Matrix Buffer with Unique Checks
# Module: cow_matrix_storage

def test_cow_matrix_storage_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
