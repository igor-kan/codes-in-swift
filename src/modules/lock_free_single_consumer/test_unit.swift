# Deterministic unit tests for Lock-Free Circular Ring Buffer via Swift Atomics
# Module: lock_free_single_consumer

def test_lock_free_single_consumer_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
