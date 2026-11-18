@main
struct UnitRunner_dinic_blocking_flow_swift {
    static func main() throws {
        try requireNonEmpty(1)
        let g = DinicFlow(n: 4); g.addEdge(0, 1, 10); g.addEdge(0, 2, 10); g.addEdge(1, 2, 2); g.addEdge(1, 3, 8); g.addEdge(2, 3, 10); assert(g.maxFlow(s: 0, t: 3) == 18)
        try verifyInvariant(true, "ok")
        print("dinic_blocking_flow_swift unit ok")
    }
}
