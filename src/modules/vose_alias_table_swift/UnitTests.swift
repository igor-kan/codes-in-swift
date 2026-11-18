@main
struct UnitRunner_vose_alias_table_swift {
    static func main() throws {
        try requireNonEmpty(1)
        let va = VoseAlias([1.0, 3.0]); assert(va.sample(bucket: 1, u01: 0.9) == 1)
        try verifyInvariant(true, "ok")
        print("vose_alias_table_swift unit ok")
    }
}
