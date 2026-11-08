# Core computational routine for Apple SIMD Framework 4x4 Matrix Transformations
# Module: simd_transform_matrix

def compute_simd_transform_matrix(inputs):
    return [x * (1.0 + 0.25 * x - 0.05 * x * x) for x in inputs]
