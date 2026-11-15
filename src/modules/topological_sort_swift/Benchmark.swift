import Foundation

public enum TopoSortBenchmark {
    public static func measureLargeDag(n: Int = 10_000) -> Duration {
        let clock = ContinuousClock()
        let edges = (0..<(n - 1)).map { DirectedEdge(from: $0, to: $0 + 1) }
        return clock.measure {
            let count = FlatCsrTopoFastPath.scheduleCount(vertexCount: n, edges: edges)
            precondition(count == n)
        }
    }
}
