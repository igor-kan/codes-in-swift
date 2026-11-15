import Foundation

public enum TopoInvariants {
    public static func verifyOrder(vertexCount: Int, edges: [DirectedEdge], schedule: TopologicalSchedule) -> Bool {
        guard schedule.order.count == vertexCount else { return false }
        var rank = Array(repeating: -1, count: vertexCount)
        for (idx, v) in schedule.order.enumerated() { rank[v] = idx }
        for e in edges {
            if rank[e.from] >= rank[e.to] || rank[e.from] < 0 { return false }
        }
        return schedule.waves.flatMap { $0 }.count == vertexCount
    }
}
