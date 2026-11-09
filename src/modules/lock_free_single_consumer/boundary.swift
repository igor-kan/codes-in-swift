# Boundary validation and exceptional input guarding for Lock-Free Circular Ring Buffer via Swift Atomics
# Module: lock_free_single_consumer

def sanitize_lock_free_single_consumer_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
