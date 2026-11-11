# Boundary validation and exceptional input guarding for Custom AsyncSequence with Sliding Window Debounce Logic
# Module: async_sliding_debounce

def sanitize_async_sliding_debounce_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
