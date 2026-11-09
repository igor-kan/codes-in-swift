# Boundary validation and exceptional input guarding for Apple Accelerate Framework vDSP 1D/2D FFT Pipeline
# Module: apple_vdsp_fft_accelerate

def sanitize_apple_vdsp_fft_accelerate_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
