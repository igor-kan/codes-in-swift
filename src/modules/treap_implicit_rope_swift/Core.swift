import Foundation

public struct ImplicitTreapSequence: ReversibleSequenceContract, Sendable {
    private var pool: [TreapSlot] = []
    private var root: Int = -1
    private var rng: UInt64 = 0x13579BDF02468ACE

    public init() {}
    public var count: Int { root == -1 ? 0 : pool[root].size }

    private mutating func nextPrio() -> UInt64 {
        rng &+= 0x9e3779b97f4a7c15
        var z = rng
        z = (z ^ (z >> 30)) &* 0xbf58476d1ce4e5b9
        return z ^ (z >> 31)
    }

    private func nodeSize(_ idx: Int) -> Int { idx == -1 ? 0 : pool[idx].size }
    private func nodeSum(_ idx: Int) -> Int { idx == -1 ? 0 : pool[idx].subtreeSum }

    private mutating func pull(_ idx: Int) {
        guard idx != -1 else { return }
        let l = pool[idx].left
        let r = pool[idx].right
        pool[idx].size = 1 + nodeSize(l) + nodeSize(r)
        pool[idx].subtreeSum = pool[idx].value + nodeSum(l) + nodeSum(r)
    }

    private mutating func push(_ idx: Int) {
        guard idx != -1 && pool[idx].rev else { return }
        pool[idx].rev = false
        let l = pool[idx].left
        let r = pool[idx].right
        pool[idx].left = r
        pool[idx].right = l
        if l != -1 { pool[l].rev.toggle() }
        if r != -1 { pool[r].rev.toggle() }
    }

    private mutating func split(_ idx: Int, leftCount: Int) -> (Int, Int) {
        if idx == -1 { return (-1, -1) }
        push(idx)
        let lsz = nodeSize(pool[idx].left)
        if lsz >= leftCount {
            let (a, b) = split(pool[idx].left, leftCount: leftCount)
            pool[idx].left = b
            pull(idx)
            return (a, idx)
        } else {
            let (a, b) = split(pool[idx].right, leftCount: leftCount - lsz - 1)
            pool[idx].right = a
            pull(idx)
            return (idx, b)
        }
    }

    private mutating func merge(_ l: Int, _ r: Int) -> Int {
        if l == -1 { return r }
        if r == -1 { return l }
        if pool[l].prio >= pool[r].prio {
            push(l)
            pool[l].right = merge(pool[l].right, r)
            pull(l)
            return l
        } else {
            push(r)
            pool[r].left = merge(l, pool[r].left)
            pull(r)
            return r
        }
    }

    public mutating func append(_ val: Int) {
        let id = pool.count
        pool.append(TreapSlot(value: val, subtreeSum: val, prio: nextPrio(), size: 1, rev: false, left: -1, right: -1))
        root = merge(root, id)
    }

    public mutating func reverseRange(lo: Int, hi: Int) throws {
        guard lo >= 0 && lo <= hi && hi < count else {
            throw ImplicitTreapError.rangeOutOfBounds(lo: lo, hi: hi, count: count)
        }
        let (a, bc) = split(root, leftCount: lo)
        let (b, c) = split(bc, leftCount: hi - lo + 1)
        if b != -1 { pool[b].rev.toggle() }
        root = merge(a, merge(b, c))
    }

    public func toArray() -> [Int] {
        var copy = self
        var res: [Int] = []
        res.reserveCapacity(count)
        func walk(_ idx: Int) {
            guard idx != -1 else { return }
            copy.push(idx)
            walk(copy.pool[idx].left)
            res.append(copy.pool[idx].value)
            walk(copy.pool[idx].right)
        }
        walk(copy.root)
        return res
    }
}
