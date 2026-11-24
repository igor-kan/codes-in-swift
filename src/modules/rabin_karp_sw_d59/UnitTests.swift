@main
struct UnitRunner_rabin_karp_sw_d59 {
    static func main() throws {
        try requireNonEmpty(1)
        let h = rabinKarpBytes(Array("abababa".utf8), Array("aba".utf8))
        precondAssert(h == [0, 2, 4])
        try verifyInvariant(true, "ok")
        print("rabin_karp_sw_d59 unit ok")
    }
}
