@main
struct PropRunner_dsu_ranked_sw_d60 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        var dsu = DisjointSet(count: 6)
        _ = dsu.unite(0, 1); _ = dsu.unite(2, 3); _ = dsu.unite(0, 2)
        try verifyInvariant(dsu.find(1) == dsu.find(3), "transitive connectivity")
        print("dsu_ranked_sw_d60 prop ok")
    }
}
