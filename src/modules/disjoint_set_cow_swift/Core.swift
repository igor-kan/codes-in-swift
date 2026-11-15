import Foundation

public struct RollbackDisjointSet: DisjointSetProtocol, Sendable {
    internal var parent: [Int]
    internal var rank: [Int]
    internal var compSize: [Int]
    internal var history: [UnionJournalEntry] = []
    public let nodeCount: Int
    public private(set) var componentCount: Int

    public init(nodeCount: Int) throws {
        guard nodeCount > 0 else { throw DisjointSetError.invalidNodeCount(nodeCount) }
        self.nodeCount = nodeCount
        self.componentCount = nodeCount
        self.parent = Array(0..<nodeCount)
        self.rank = Array(repeating: 0, count: nodeCount)
        self.compSize = Array(repeating: 1, count: nodeCount)
    }

    public func findRoot(_ x: Int) throws -> Int {
        guard x >= 0 && x < nodeCount else {
            throw DisjointSetError.nodeOutOfRange(node: x, upperBound: nodeCount)
        }
        var cur = x
        while parent[cur] != cur {
            cur = parent[cur]
        }
        return cur
    }

    public mutating func unite(_ a: Int, _ b: Int) throws -> Bool {
        let ra = try findRoot(a)
        let rb = try findRoot(b)
        if ra == rb { return false }
        let (root, child) = rank[ra] >= rank[rb] ? (ra, rb) : (rb, ra)
        history.append(UnionJournalEntry(
            child: child,
            root: root,
            previousRootRank: rank[root],
            previousRootSize: compSize[root]
        ))
        parent[child] = root
        compSize[root] += compSize[child]
        if rank[root] == rank[child] {
            rank[root] += 1
        }
        componentCount -= 1
        return true
    }

    public func checkpoint() -> Int {
        return history.count
    }

    public mutating func rollback(to target: Int) throws {
        guard target >= 0 && target <= history.count else {
            throw DisjointSetError.invalidCheckpoint(checkpoint: target, historyLength: history.count)
        }
        while history.count > target {
            let entry = history.removeLast()
            parent[entry.child] = entry.child
            rank[entry.root] = entry.previousRootRank
            compSize[entry.root] = entry.previousRootSize
            componentCount += 1
        }
    }

    public func size(of x: Int) throws -> Int {
        let r = try findRoot(x)
        return compSize[r]
    }
}
