# Core computational routine for Custom AsyncSequence with Sliding Window Debounce
# Module: async_throttled_stream

def compute_async_throttled_stream(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
