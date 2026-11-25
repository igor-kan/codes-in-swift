@main
struct UnitRunner_dsu_ranked_sw_d60 {
    static func main() throws {
        try requireNonEmpty(1)
        var dsu = DisjointSet(count: 5)
        try verifyInvariant(dsu.unite(0, 1), "first unite")
        try verifyInvariant(dsu.unite(1, 2), "second unite")
        try verifyInvariant(dsu.componentSize(0) == 3 && dsu.components == 3, "comp count mismatch")
        try verifyInvariant(true, "ok")
        print("dsu_ranked_sw_d60 unit ok")
    }
}
