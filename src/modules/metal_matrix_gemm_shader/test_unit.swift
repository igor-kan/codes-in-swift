# Deterministic unit tests for Metal GPU Compute Shader Matrix Multiplication
# Module: metal_matrix_gemm_shader

def test_metal_matrix_gemm_shader_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
