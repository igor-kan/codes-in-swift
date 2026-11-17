@main
struct UnitRunner_union_find_rollback_swift {
    static func main() throws {
        var d = RollbackDsu(5); _ = d.unite(0, 1); let cp = d.snapshot(); _ = d.unite(1, 2); d.rollback(to: cp); assert(d.components == 4 && d.find(0) != d.find(2))
        print("union_find_rollback_swift unit ok")
    }
}
