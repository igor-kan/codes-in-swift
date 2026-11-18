@main
struct PropRunner_hopcroft_karp_bip_swift {
    static func main() throws {
        try assertNonNegative(0, "zero")
        let m = HopcroftKarp.maxMatching(nL: 3, nR: 2, edges: [(0,0),(1,0),(2,1)]); assert(m == 2)
        print("hopcroft_karp_bip_swift prop ok")
    }
}
