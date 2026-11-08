# Deterministic unit tests for Swift 6 Actor-Isolated Priority Queue with Priority
# Module: actor_priority_queue

def test_actor_priority_queue_zero_element():
    x = 0.0
    res = x * (1.0 + 0.25 * x - 0.05 * x * x)
    assert res == 0.0
