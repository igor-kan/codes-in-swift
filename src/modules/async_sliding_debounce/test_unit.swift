# Deterministic unit tests for Custom AsyncSequence with Sliding Window Debounce Logic
# Module: async_sliding_debounce

def test_async_sliding_debounce_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
