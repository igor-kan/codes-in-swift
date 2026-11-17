@main
struct UnitRunner_lfu_cache_buckets_swift {
    static func main() throws {
        var c = LfuBucketCache(capacity: 2); c.put(1, 10); c.put(2, 20); _ = c.get(1); c.put(3, 30); assert(c.get(2) == nil && c.get(1) == 10)
        print("lfu_cache_buckets_swift unit ok")
    }
}
