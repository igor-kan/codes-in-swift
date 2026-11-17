@main
struct PropRunner_tarjan_scc_swift {
    static func main() throws {
        let res = TarjanSccEngine().decompose(n: 3, edges: [(0,1),(1,2)]); assert(res.count == 3)
        print("tarjan_scc_swift prop ok")
    }
}
