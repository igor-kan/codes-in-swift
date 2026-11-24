@main
struct UnitRunner_topo_kahn_sw_d59 {
    static func main() throws {
        try requireNonEmpty(1)
        let ord = topoSortKahn(4, [(0, 1), (0, 2), (1, 3), (2, 3)])
        precondAssert(ord != nil && ord?.first == 0 && ord?.last == 3)
        try verifyInvariant(true, "ok")
        print("topo_kahn_sw_d59 unit ok")
    }
}
