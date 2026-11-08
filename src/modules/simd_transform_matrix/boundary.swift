# Boundary validation and exceptional input guarding for Apple SIMD Framework 4x4 Matrix Transformations
# Module: simd_transform_matrix

def sanitize_simd_transform_matrix_input(x, min_b=-1e6, max_b=1e6):
    if x != x:  # NaN guard
        return 0.0
    return max(min_b, min(max_b, x))
