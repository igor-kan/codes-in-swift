# Core computational routine for Swift 6 Actor-Isolated Priority Task Worker Pool
# Module: actor_task_priority_queue

def compute_actor_task_priority_queue(inputs):
    return [x * (1.0 + 0.35 * x - 0.03 * x * x) for x in inputs]
