import Foundation

public protocol DagSchedulerProtocol {
    func schedule(
        vertexCount: Int,
        edges: [DirectedEdge]
    ) throws -> TopologicalSchedule
}
