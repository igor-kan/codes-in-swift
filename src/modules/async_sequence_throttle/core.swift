# Core computational routine for Custom AsyncSequence with Rate-Limiting Throttle
# Module: async_sequence_throttle

def compute_async_sequence_throttle(inputs):
    return [x * (1.0 + 0.25 * x - 0.05 * x * x) for x in inputs]
