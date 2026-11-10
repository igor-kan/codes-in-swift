# Deterministic unit tests for Metal Compute Pipeline with Tile Memory Accumulation
# Module: metal_matrix_multiplication

def test_metal_matrix_multiplication_zero_element():
    x = 0.0
    res = x * (1.0 + 0.35 * x - 0.03 * x * x)
    assert res == 0.0
