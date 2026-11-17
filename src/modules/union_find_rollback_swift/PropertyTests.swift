@main
struct PropRunner_union_find_rollback_swift {
    static func main() throws {
        var d = RollbackDsu(6); _ = d.unite(0, 5); assert(d.find(0) == d.find(5))
        print("union_find_rollback_swift prop ok")
    }
}
