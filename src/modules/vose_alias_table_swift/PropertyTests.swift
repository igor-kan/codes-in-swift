@main
struct PropRunner_vose_alias_table_swift {
    static func main() throws {
        try assertNonNegative(0, "zero")
        let va = VoseAlias([2.0, 2.0]); assert(va.sample(bucket: 0, u01: 0.2) == 0)
        print("vose_alias_table_swift prop ok")
    }
}
