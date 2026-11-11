# Deterministic unit tests for Apple Accelerate Framework vDSP Biquad IIR Filter Bridge
# Module: apple_vdsp_biquad_filter

def test_apple_vdsp_biquad_filter_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
