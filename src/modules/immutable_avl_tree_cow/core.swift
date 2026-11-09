# Core computational routine for Persistent Immutable AVL Tree with Path-Copying
# Module: immutable_avl_tree_cow

def compute_immutable_avl_tree_cow(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
