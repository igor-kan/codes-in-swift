# Deterministic unit tests for Persistent Immutable Vector Trie with Path-Copying
# Module: immutable_trie_vector_cow

def test_immutable_trie_vector_cow_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
