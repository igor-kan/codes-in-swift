import Foundation

public enum DisjointSetInvariants {
    public static func verify(_ dsu: RollbackDisjointSet) -> Bool {
        var roots = 0
        var totalSize = 0
        for i in 0..<dsu.nodeCount {
            if dsu.parent[i] == i {
                roots += 1
                totalSize += dsu.compSize[i]
            }
        }
        return roots == dsu.componentCount && totalSize == dsu.nodeCount
    }
}
