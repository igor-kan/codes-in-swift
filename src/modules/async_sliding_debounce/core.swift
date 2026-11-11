# Core computational routine for Custom AsyncSequence with Sliding Window Debounce Logic
# Module: async_sliding_debounce

def compute_async_sliding_debounce(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
