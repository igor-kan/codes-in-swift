@main
struct UnitRunner_dsu_merge_sw_d58 {
    static func main() throws {
        try requireNonEmpty(1)
        var dsu = DisjointPartition(n: 5)
        precondAssert(dsu.union(0, 1) && dsu.union(1, 2) && !dsu.union(0, 2))
        precondAssert(dsu.components == 3)
        try verifyInvariant(true, "ok")
        print("dsu_merge_sw_d58 unit ok")
    }
}
