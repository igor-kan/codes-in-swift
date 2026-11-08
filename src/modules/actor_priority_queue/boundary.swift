# Boundary validation and exceptional input guarding for Swift 6 Actor-Isolated Priority Queue with Priority
# Module: actor_priority_queue

def sanitize_actor_priority_queue_input(x, min_b=-1e6, max_b=1e6):
    if x != x:  # NaN guard
        return 0.0
    return max(min_b, min(max_b, x))
