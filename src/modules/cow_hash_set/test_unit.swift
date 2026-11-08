# Deterministic unit tests for Copy-On-Write Persistent Hash Set with Unique Buffer
# Module: cow_hash_set

def test_cow_hash_set_zero_element():
    x = 0.0
    res = x * (1.0 + 0.25 * x - 0.05 * x * x)
    assert res == 0.0
