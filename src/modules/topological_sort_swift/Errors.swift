import Foundation

public enum TopoSortError: Error, Sendable, Equatable {
    case nonPositiveVertexCount(Int)
    case vertexOutOfRange(Int)
    case cycleDetected(unscheduledVertices: [Int])
}
