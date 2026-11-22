@main
struct UnitRunner_bloom_bitset_sw_d57 {
    static func main() throws {
        try requireNonEmpty(1)
        var bf = Bloom256()
        bf.insert(101); bf.insert(202)
        precondAssert(bf.mightContain(101) && bf.mightContain(202))
        try verifyInvariant(true, "ok")
        print("bloom_bitset_sw_d57 unit ok")
    }
}
