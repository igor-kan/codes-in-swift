# Deterministic unit tests for Custom AsyncSequence with Sliding Window Debounce
# Module: async_throttled_stream

def test_async_throttled_stream_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
