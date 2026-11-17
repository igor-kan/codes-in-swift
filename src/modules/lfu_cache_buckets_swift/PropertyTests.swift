@main
struct PropRunner_lfu_cache_buckets_swift {
    static func main() throws {
        var c = LfuBucketCache(capacity: 3); for k in 0..<12 { c.put(k % 4, k) }; assert(c.get(0) != nil)
        print("lfu_cache_buckets_swift prop ok")
    }
}
