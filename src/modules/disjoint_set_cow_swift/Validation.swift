import Foundation

public enum DisjointSetValidator {
    public static func validateEdgeList(_ edges: [(Int, Int)], nodeCount: Int) throws {
        for (u, v) in edges {
            if u < 0 || u >= nodeCount {
                throw DisjointSetError.nodeOutOfRange(node: u, upperBound: nodeCount)
            }
            if v < 0 || v >= nodeCount {
                throw DisjointSetError.nodeOutOfRange(node: v, upperBound: nodeCount)
            }
        }
    }
}
