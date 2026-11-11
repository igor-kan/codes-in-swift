# Core computational routine for Metal Compute Pipeline with Tile Memory Accumulation
# Module: metal_matrix_gemm_compute

def compute_metal_matrix_gemm_compute(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
