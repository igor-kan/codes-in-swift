@main
struct PropRunner_kmp_search_sw_d58 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        let misses = kmpFindAllBytes(Array("swift".utf8), Array("rust".utf8))
        precondAssert(misses.isEmpty)
        print("kmp_search_sw_d58 prop ok")
    }
}
