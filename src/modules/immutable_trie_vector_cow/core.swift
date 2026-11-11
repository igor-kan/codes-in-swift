# Core computational routine for Persistent Immutable Vector Trie with Path-Copying
# Module: immutable_trie_vector_cow

def compute_immutable_trie_vector_cow(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
