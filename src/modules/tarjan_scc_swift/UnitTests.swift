@main
struct UnitRunner_tarjan_scc_swift {
    static func main() throws {
        let res = TarjanSccEngine().decompose(n: 4, edges: [(0,1),(1,2),(2,0),(2,3)]); assert(res.count == 2 && res.componentOf[0] == res.componentOf[2])
        print("tarjan_scc_swift unit ok")
    }
}
