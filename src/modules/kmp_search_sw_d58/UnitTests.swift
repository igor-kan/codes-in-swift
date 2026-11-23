@main
struct UnitRunner_kmp_search_sw_d58 {
    static func main() throws {
        try requireNonEmpty(1)
        let hits = kmpFindAllBytes(Array("abababa".utf8), Array("aba".utf8))
        precondAssert(hits == [0, 2, 4])
        try verifyInvariant(true, "ok")
        print("kmp_search_sw_d58 unit ok")
    }
}
