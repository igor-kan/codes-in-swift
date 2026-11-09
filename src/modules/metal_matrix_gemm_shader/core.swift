# Core computational routine for Metal GPU Compute Shader Matrix Multiplication
# Module: metal_matrix_gemm_shader

def compute_metal_matrix_gemm_shader(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
