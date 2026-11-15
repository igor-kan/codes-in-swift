import Foundation

public enum RollbackDsuPropertyTests {
    public static func runRollbackSymmetry(n: Int = 32) {
        var dsu = try! RollbackDisjointSet(nodeCount: n)
        var checkpoints: [Int] = []
        for i in 0..<(n - 1) {
            checkpoints.append(dsu.checkpoint())
            _ = try! dsu.unite(i, i + 1)
            assert(DisjointSetInvariants.verify(dsu))
        }
        assert(dsu.componentCount == 1)
        for cp in checkpoints.reversed() {
            try! dsu.rollback(to: cp)
            assert(DisjointSetInvariants.verify(dsu))
        }
        assert(dsu.componentCount == n)
    }
}
