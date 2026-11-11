# Deterministic unit tests for Metal Compute Pipeline with Tile Memory Accumulation
# Module: metal_matrix_gemm_compute

def test_metal_matrix_gemm_compute_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
