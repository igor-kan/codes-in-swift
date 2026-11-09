# Boundary validation and exceptional input guarding for Swift 6 Actor-Isolated Parallel TaskGroup Pipeline
# Module: actor_isolated_task_group

def sanitize_actor_isolated_task_group_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
