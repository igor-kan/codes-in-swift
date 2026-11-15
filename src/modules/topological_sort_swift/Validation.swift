import Foundation

public enum TopoValidator {
    public static func validateGraph(vertexCount: Int, edges: [DirectedEdge]) throws {
        guard vertexCount > 0 else { throw TopoSortError.nonPositiveVertexCount(vertexCount) }
        for e in edges {
            if e.from < 0 || e.from >= vertexCount { throw TopoSortError.vertexOutOfRange(e.from) }
            if e.to < 0 || e.to >= vertexCount { throw TopoSortError.vertexOutOfRange(e.to) }
        }
    }
}
