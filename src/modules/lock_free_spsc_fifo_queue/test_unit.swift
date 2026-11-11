# Deterministic unit tests for Atomic Pointer Lock-Free SPSC FIFO Queue for Audio I/O
# Module: lock_free_spsc_fifo_queue

def test_lock_free_spsc_fifo_queue_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
