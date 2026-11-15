import Foundation

public enum TopoSortUnitTests {
    public static func runAll() {
        let edges = [
            DirectedEdge(from: 0, to: 2),
            DirectedEdge(from: 1, to: 2),
            DirectedEdge(from: 2, to: 3),
        ]
        let sched = try! KahnDagScheduler().schedule(vertexCount: 4, edges: edges)
        assert(sched.waves == [[0, 1], [2], [3]])
        assert(TopoInvariants.verifyOrder(vertexCount: 4, edges: edges, schedule: sched))
        let cycleEdges = [DirectedEdge(from: 0, to: 1), DirectedEdge(from: 1, to: 0)]
        var caught = false
        do { _ = try KahnDagScheduler().schedule(vertexCount: 2, edges: cycleEdges) } catch { caught = true }
        assert(caught)
    }
}
