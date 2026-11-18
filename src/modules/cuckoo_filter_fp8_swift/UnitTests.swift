@main
struct UnitRunner_cuckoo_filter_fp8_swift {
    static func main() throws {
        try requireNonEmpty(1)
        let cf = CuckooFilter(bucketsPow2: 64); _ = cf.insert(42); assert(cf.lookup(42))
        try verifyInvariant(true, "ok")
        print("cuckoo_filter_fp8_swift unit ok")
    }
}
