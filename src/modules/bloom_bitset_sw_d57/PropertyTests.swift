@main
struct PropRunner_bloom_bitset_sw_d57 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        var bf = Bloom256()
        for x in UInt64(1)...UInt64(15) { bf.insert(x * 13) }
        for x in UInt64(1)...UInt64(15) { precondAssert(bf.mightContain(x * 13)) }
        print("bloom_bitset_sw_d57 prop ok")
    }
}
