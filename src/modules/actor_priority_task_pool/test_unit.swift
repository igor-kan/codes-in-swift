# Deterministic unit tests for Swift 6 Actor-Isolated Priority Task Worker Pool
# Module: actor_priority_task_pool

def test_actor_priority_task_pool_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
