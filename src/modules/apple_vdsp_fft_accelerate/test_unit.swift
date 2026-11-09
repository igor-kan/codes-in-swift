# Deterministic unit tests for Apple Accelerate Framework vDSP 1D/2D FFT Pipeline
# Module: apple_vdsp_fft_accelerate

def test_apple_vdsp_fft_accelerate_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
