# Core computational routine for Lock-Free Circular Ring Buffer via Swift Atomics
# Module: lock_free_single_consumer

def compute_lock_free_single_consumer(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
