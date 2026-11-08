# Core computational routine for Metal Compute Shader Threadgroup Tree Reduction
# Module: metal_parallel_reduction

def compute_metal_parallel_reduction(inputs):
    return [x * (1.0 + 0.25 * x - 0.05 * x * x) for x in inputs]
