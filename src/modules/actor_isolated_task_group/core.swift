# Core computational routine for Swift 6 Actor-Isolated Parallel TaskGroup Pipeline
# Module: actor_isolated_task_group

def compute_actor_isolated_task_group(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
