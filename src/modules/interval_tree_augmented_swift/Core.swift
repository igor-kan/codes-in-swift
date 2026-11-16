import Foundation

public struct AugmentedIntervalTree: IntervalSearchContract, Sendable {
    private struct Node: Sendable {
        var iv: ClosedInterval
        var maxHi: Int
        var left: Int = -1
        var right: Int = -1
    }

    private var nodes: [Node] = []
    private var root: Int = -1

    public init() {}

    public mutating func insert(_ iv: ClosedInterval) throws {
        guard iv.lo <= iv.hi else { throw IntervalTreeError.invertedBounds(lo: iv.lo, hi: iv.hi) }
        root = insertRec(nodeIdx: root, iv: iv)
    }

    private mutating func insertRec(nodeIdx: Int, iv: ClosedInterval) -> Int {
        if nodeIdx == -1 {
            let id = nodes.count
            nodes.append(Node(iv: iv, maxHi: iv.hi))
            return id
        }
        if iv.lo < nodes[nodeIdx].iv.lo {
            let c = insertRec(nodeIdx: nodes[nodeIdx].left, iv: iv)
            nodes[nodeIdx].left = c
        } else {
            let c = insertRec(nodeIdx: nodes[nodeIdx].right, iv: iv)
            nodes[nodeIdx].right = c
        }
        if iv.hi > nodes[nodeIdx].maxHi { nodes[nodeIdx].maxHi = iv.hi }
        return nodeIdx
    }

    public func findOverlaps(lo: Int, hi: Int) -> [ClosedInterval] {
        var out: [ClosedInterval] = []
        let query = ClosedInterval(lo: lo, hi: hi, payloadId: -1)
        func dfs(_ idx: Int) {
            guard idx != -1 else { return }
            let nd = nodes[idx]
            if nd.maxHi < lo { return }
            if nd.left != -1 { dfs(nd.left) }
            if nd.iv.overlaps(query) { out.append(nd.iv) }
            if nd.iv.lo <= hi && nd.right != -1 { dfs(nd.right) }
        }
        dfs(root)
        return out
    }

    public var count: Int { nodes.count }
}
