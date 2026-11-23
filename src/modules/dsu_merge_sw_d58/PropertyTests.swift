@main
struct PropRunner_dsu_merge_sw_d58 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        var dsu = DisjointPartition(n: 4)
        dsu.union(2, 3)
        precondAssert(dsu.find(2) == dsu.find(3))
        print("dsu_merge_sw_d58 prop ok")
    }
}
