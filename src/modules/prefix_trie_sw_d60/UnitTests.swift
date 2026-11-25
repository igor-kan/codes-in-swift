@main
struct UnitRunner_prefix_trie_sw_d60 {
    static func main() throws {
        try requireNonEmpty(1)
        var tr = ArenaTrie()
        tr.insert("swift"); tr.insert("swifter")
        try verifyInvariant(tr.contains("swift") && !tr.contains("swif"), "contains mismatch")
        try verifyInvariant(tr.longestTerminalPrefix(of: "swiftly") == 5, "lcp mismatch")
        try verifyInvariant(true, "ok")
        print("prefix_trie_sw_d60 unit ok")
    }
}
