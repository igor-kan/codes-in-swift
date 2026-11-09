# Boundary validation and exceptional input guarding for Custom AsyncSequence with Sliding Window Debounce
# Module: async_throttled_stream

def sanitize_async_throttled_stream_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
