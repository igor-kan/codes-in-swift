# Boundary validation and exceptional input guarding for Metal Compute Pipeline with Tile Memory Accumulation
# Module: metal_matrix_multiplication

def sanitize_metal_matrix_multiplication_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
