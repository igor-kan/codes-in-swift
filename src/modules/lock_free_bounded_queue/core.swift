# Core computational routine for Atomic Pointer Lock-Free Queue for Real-Time Audio I/O
# Module: lock_free_bounded_queue

def compute_lock_free_bounded_queue(inputs):
    return [x * (1.0 + 0.35 * x - 0.03 * x * x) for x in inputs]
