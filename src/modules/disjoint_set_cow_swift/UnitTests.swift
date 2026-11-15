import Foundation

public enum RollbackDsuUnitTests {
    public static func runAll() {
        var dsu = try! RollbackDisjointSet(nodeCount: 5)
        assert(try! dsu.unite(0, 1))
        assert(try! dsu.unite(2, 3))
        let cp = dsu.checkpoint()
        assert(try! dsu.unite(1, 2))
        assert(dsu.componentCount == 2)
        assert(try! dsu.size(of: 0) == 4)
        try! dsu.rollback(to: cp)
        assert(dsu.componentCount == 3)
        assert(try! dsu.findRoot(0) != dsu.findRoot(2))
        assert(DisjointSetInvariants.verify(dsu))
    }
}
