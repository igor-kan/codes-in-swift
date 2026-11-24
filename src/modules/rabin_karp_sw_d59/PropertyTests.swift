@main
struct PropRunner_rabin_karp_sw_d59 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        precondAssert(rabinKarpBytes(Array("swift".utf8), Array("go".utf8)).isEmpty)
        print("rabin_karp_sw_d59 prop ok")
    }
}
