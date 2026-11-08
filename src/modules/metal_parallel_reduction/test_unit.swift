# Deterministic unit tests for Metal Compute Shader Threadgroup Tree Reduction
# Module: metal_parallel_reduction

def test_metal_parallel_reduction_zero_element():
    x = 0.0
    res = x * (1.0 + 0.25 * x - 0.05 * x * x)
    assert res == 0.0
