# Boundary validation and exceptional input guarding for Persistent Immutable AVL Tree with Path-Copying
# Module: immutable_avl_tree_cow

def sanitize_immutable_avl_tree_cow_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
