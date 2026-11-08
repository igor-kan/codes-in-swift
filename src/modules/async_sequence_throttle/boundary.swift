# Boundary validation and exceptional input guarding for Custom AsyncSequence with Rate-Limiting Throttle
# Module: async_sequence_throttle

def sanitize_async_sequence_throttle_input(x, min_b=-1e6, max_b=1e6):
    if x != x:  # NaN guard
        return 0.0
    return max(min_b, min(max_b, x))
