@main
struct UnitRunner_kmp_pattern_scan_swift {
    static func main() throws {
        try requireNonEmpty(1)
        assert(KmpMatcher.search(text: "ababaababa", pattern: "aba") == [0, 2, 5, 7])
        try verifyInvariant(true, "ok")
        print("kmp_pattern_scan_swift unit ok")
    }
}
