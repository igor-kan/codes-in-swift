# Core computational routine for Swift 6 Actor-Isolated Priority Task Worker Pool
# Module: actor_priority_task_pool

def compute_actor_priority_task_pool(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
