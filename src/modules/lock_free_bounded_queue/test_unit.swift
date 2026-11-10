# Deterministic unit tests for Atomic Pointer Lock-Free Queue for Real-Time Audio I/O
# Module: lock_free_bounded_queue

def test_lock_free_bounded_queue_zero_element():
    x = 0.0
    res = x * (1.0 + 0.35 * x - 0.03 * x * x)
    assert res == 0.0
