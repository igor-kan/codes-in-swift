# Boundary validation and exceptional input guarding for Atomic Pointer Lock-Free Queue for Real-Time Audio I/O
# Module: lock_free_bounded_queue

def sanitize_lock_free_bounded_queue_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
