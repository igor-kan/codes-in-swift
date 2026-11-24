@main
struct PropRunner_topo_kahn_sw_d59 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        precondAssert(topoSortKahn(2, [(0, 1), (1, 0)]) == nil)
        print("topo_kahn_sw_d59 prop ok")
    }
}
