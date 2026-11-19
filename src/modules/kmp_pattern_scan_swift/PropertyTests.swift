@main
struct PropRunner_kmp_pattern_scan_swift {
    static func main() throws {
        try assertNonNegative(0, "zero")
        assert(KmpMatcher.search(text: "abcdef", pattern: "xyz").isEmpty)
        print("kmp_pattern_scan_swift prop ok")
    }
}
