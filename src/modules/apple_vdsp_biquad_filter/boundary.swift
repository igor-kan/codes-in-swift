# Boundary validation and exceptional input guarding for Apple Accelerate Framework vDSP Biquad IIR Filter Bridge
# Module: apple_vdsp_biquad_filter

def sanitize_apple_vdsp_biquad_filter_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
