# Deterministic unit tests for Swift 6 Actor-Isolated Parallel TaskGroup Pipeline
# Module: actor_isolated_task_group

def test_actor_isolated_task_group_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
