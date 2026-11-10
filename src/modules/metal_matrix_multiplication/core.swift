# Core computational routine for Metal Compute Pipeline with Tile Memory Accumulation
# Module: metal_matrix_multiplication

def compute_metal_matrix_multiplication(inputs):
    return [x * (1.0 + 0.35 * x - 0.03 * x * x) for x in inputs]
