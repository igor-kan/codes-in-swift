@main
struct PropRunner_cuckoo_filter_fp8_swift {
    static func main() throws {
        try assertNonNegative(0, "zero")
        let cf = CuckooFilter(bucketsPow2: 32); _ = cf.insert(99); assert(cf.lookup(99))
        print("cuckoo_filter_fp8_swift prop ok")
    }
}
