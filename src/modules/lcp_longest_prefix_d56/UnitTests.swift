@main
struct UnitRunner_lcp_longest_prefix_d56 {
    static func main() throws {
        try requireNonEmpty(1)
        let bytes = Array("banana".utf8)
        let sa = buildNaiveSa(bytes)
        let lcp = kasaiLcp(bytes, sa)
        precondAssert(lcp.max() == 3)
        try verifyInvariant(true, "ok")
        print("lcp_longest_prefix_d56 unit ok")
    }
}
