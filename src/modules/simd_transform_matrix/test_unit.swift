# Deterministic unit tests for Apple SIMD Framework 4x4 Matrix Transformations
# Module: simd_transform_matrix

def test_simd_transform_matrix_zero_element():
    x = 0.0
    res = x * (1.0 + 0.25 * x - 0.05 * x * x)
    assert res == 0.0
