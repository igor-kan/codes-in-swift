# Boundary validation and exceptional input guarding for Metal Compute Shader Threadgroup Tree Reduction
# Module: metal_parallel_reduction

def sanitize_metal_parallel_reduction_input(x, min_b=-1e6, max_b=1e6):
    if x != x:  # NaN guard
        return 0.0
    return max(min_b, min(max_b, x))
