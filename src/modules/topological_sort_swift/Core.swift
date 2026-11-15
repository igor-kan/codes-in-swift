import Foundation

public struct KahnDagScheduler: DagSchedulerProtocol, Sendable {
    public init() {}

    public func schedule(vertexCount: Int, edges: [DirectedEdge]) throws -> TopologicalSchedule {
        try TopoValidator.validateGraph(vertexCount: vertexCount, edges: edges)
        var adj: [[Int]] = Array(repeating: [], count: vertexCount)
        var indegree = Array(repeating: 0, count: vertexCount)
        for edge in edges {
            adj[edge.from].append(edge.to)
            indegree[edge.to] += 1
        }
        var currentWave: [Int] = []
        for v in 0..<vertexCount where indegree[v] == 0 {
            currentWave.append(v)
        }
        var order: [Int] = []
        order.reserveCapacity(vertexCount)
        var waves: [[Int]] = []
        while !currentWave.isEmpty {
            waves.append(currentWave)
            var nextWave: [Int] = []
            for u in currentWave {
                order.append(u)
                for v in adj[u] {
                    indegree[v] -= 1
                    if indegree[v] == 0 { nextWave.append(v) }
                }
            }
            nextWave.sort()
            currentWave = nextWave
        }
        if order.count != vertexCount {
            let blocked = (0..<vertexCount).filter { indegree[$0] > 0 }
            throw TopoSortError.cycleDetected(unscheduledVertices: blocked)
        }
        return TopologicalSchedule(order: order, waves: waves)
    }
}
