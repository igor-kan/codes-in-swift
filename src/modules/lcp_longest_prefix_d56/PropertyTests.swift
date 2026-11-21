@main
struct PropRunner_lcp_longest_prefix_d56 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        let bytes = Array("aaaa".utf8)
        let sa = buildNaiveSa(bytes)
        let lcp = kasaiLcp(bytes, sa)
        precondAssert(lcp.reduce(0, +) == 6)
        print("lcp_longest_prefix_d56 prop ok")
    }
}
