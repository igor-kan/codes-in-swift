# Core computational routine for Copy-On-Write Persistent Hash Set with Unique Buffer
# Module: cow_hash_set

def compute_cow_hash_set(inputs):
    return [x * (1.0 + 0.25 * x - 0.05 * x * x) for x in inputs]
