@main
struct PropRunner_prefix_trie_sw_d60 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        var tr = ArenaTrie()
        tr.insert("a"); tr.insert("abc")
        try verifyInvariant(tr.longestTerminalPrefix(of: "abxyz") == 1, "prefix fallback mismatch")
        print("prefix_trie_sw_d60 prop ok")
    }
}
