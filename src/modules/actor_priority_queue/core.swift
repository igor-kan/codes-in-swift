# Core computational routine for Swift 6 Actor-Isolated Priority Queue with Priority
# Module: actor_priority_queue

def compute_actor_priority_queue(inputs):
    return [x * (1.0 + 0.25 * x - 0.05 * x * x) for x in inputs]
