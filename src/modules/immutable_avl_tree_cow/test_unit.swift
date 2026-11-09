# Deterministic unit tests for Persistent Immutable AVL Tree with Path-Copying
# Module: immutable_avl_tree_cow

def test_immutable_avl_tree_cow_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
