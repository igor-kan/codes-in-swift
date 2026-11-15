import Foundation

public enum TopoSortPropertyTests {
    public static func runRandomDags(trials: Int = 30) {
        var rng: UInt64 = 0xDEADBEEF12345678
        for _ in 0..<trials {
            let n = 16
            var edges: [DirectedEdge] = []
            for u in 0..<n {
                for v in (u + 1)..<n {
                    rng = rng &* 6364136223846793005 &+ 1
                    if (rng & 3) == 0 { edges.append(DirectedEdge(from: u, to: v)) }
                }
            }
            let sched = try! KahnDagScheduler().schedule(vertexCount: n, edges: edges)
            assert(TopoInvariants.verifyOrder(vertexCount: n, edges: edges, schedule: sched))
        }
    }
}
