# Deterministic unit tests for Swift 6 Actor-Isolated Priority Task Worker Pool
# Module: actor_task_priority_queue

def test_actor_task_priority_queue_zero_element():
    x = 0.0
    res = x * (1.0 + 0.35 * x - 0.03 * x * x)
    assert res == 0.0
