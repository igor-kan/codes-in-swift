# Boundary validation and exceptional input guarding for Metal GPU Compute Shader Matrix Multiplication
# Module: metal_matrix_gemm_shader

def sanitize_metal_matrix_gemm_shader_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
