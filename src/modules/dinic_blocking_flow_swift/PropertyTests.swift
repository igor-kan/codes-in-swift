@main
struct PropRunner_dinic_blocking_flow_swift {
    static func main() throws {
        try assertNonNegative(0, "zero")
        let g = DinicFlow(n: 3); g.addEdge(0, 1, 7); g.addEdge(1, 2, 5); assert(g.maxFlow(s: 0, t: 2) == 5)
        print("dinic_blocking_flow_swift prop ok")
    }
}
