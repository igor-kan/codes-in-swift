@main
struct UnitRunner_hopcroft_karp_bip_swift {
    static func main() throws {
        try requireNonEmpty(1)
        let m = HopcroftKarp.maxMatching(nL: 4, nR: 4, edges: [(0,0),(0,1),(1,0),(2,2),(2,3),(3,2)]); assert(m == 4)
        try verifyInvariant(true, "ok")
        print("hopcroft_karp_bip_swift unit ok")
    }
}
