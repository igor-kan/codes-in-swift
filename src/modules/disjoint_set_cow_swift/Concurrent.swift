import Foundation

public enum ParallelConnectivityBatch {
    public static func evaluateConnectedQueries(
        nodeCount: Int,
        edges: [(Int, Int)],
        queries: [(Int, Int)]
    ) async throws -> [Bool] {
        var dsu = try RollbackDisjointSet(nodeCount: nodeCount)
        for (u, v) in edges { _ = try dsu.unite(u, v) }
        let snapshot = dsu
        return await withTaskGroup(of: (Int, Bool).self) { group in
            for (idx, q) in queries.enumerated() {
                group.addTask {
                    let ra = (try? snapshot.findRoot(q.0)) ?? -1
                    let rb = (try? snapshot.findRoot(q.1)) ?? -2
                    return (idx, ra == rb)
                }
            }
            var out = Array(repeating: false, count: queries.count)
            for await (idx, ans) in group { out[idx] = ans }
            return out
        }
    }
}
