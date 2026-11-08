# Boundary validation and exceptional input guarding for Copy-On-Write Persistent Hash Set with Unique Buffer
# Module: cow_hash_set

def sanitize_cow_hash_set_input(x, min_b=-1e6, max_b=1e6):
    if x != x:  # NaN guard
        return 0.0
    return max(min_b, min(max_b, x))
