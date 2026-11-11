# Boundary validation and exceptional input guarding for Persistent Immutable Vector Trie with Path-Copying
# Module: immutable_trie_vector_cow

def sanitize_immutable_trie_vector_cow_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
