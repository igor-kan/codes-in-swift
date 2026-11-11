# Core computational routine for Atomic Pointer Lock-Free SPSC FIFO Queue for Audio I/O
# Module: lock_free_spsc_fifo_queue

def compute_lock_free_spsc_fifo_queue(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
