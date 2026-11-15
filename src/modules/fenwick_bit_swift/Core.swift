import Foundation

public struct FenwickTree: FenwickTreeProtocol, Sendable {
    internal var tree: ContiguousArray<Int64>
    public let count: Int

    public init(count: Int) throws {
        guard count > 0 else { throw FenwickError.nonPositiveSize(count) }
        self.count = count
        self.tree = ContiguousArray(repeating: 0, count: count + 1)
    }

    public init(initialValues: [Int64]) throws {
        try self.init(count: initialValues.count)
        for i in 0..<initialValues.count {
            tree[i + 1] += initialValues[i]
            let parent = (i + 1) + ((i + 1) & -(i + 1))
            if parent <= count {
                tree[parent] += tree[i + 1]
            }
        }
    }

    public mutating func add(_ delta: Int64, at index: Int) throws {
        guard index >= 0 && index < count else { throw FenwickError.indexOutOfBounds(index) }
        var pos = index + 1
        while pos <= count {
            tree[pos] &+= delta
            pos += pos & -pos
        }
    }

    public func prefixSum(through index: Int) throws -> Int64 {
        guard index >= 0 && index < count else { throw FenwickError.indexOutOfBounds(index) }
        var pos = index + 1
        var acc: Int64 = 0
        while pos > 0 {
            acc &+= tree[pos]
            pos -= pos & -pos
        }
        return acc
    }

    public func rangeSum(left: Int, right: Int) throws -> Int64 {
        guard left >= 0 && left <= right && right < count else {
            throw FenwickError.invalidRange(left: left, right: right)
        }
        let hi = try prefixSum(through: right)
        let lo = left == 0 ? 0 : try prefixSum(through: left - 1)
        return hi - lo
    }

    public func lowerBoundPrefix(_ target: Int64) throws -> Int {
        guard target > 0 else { throw FenwickError.negativeTargetForOrderSearch(target) }
        var idx = 0
        var bitMask = 1
        while (bitMask << 1) <= count { bitMask <<= 1 }
        var rem = target
        while bitMask > 0 {
            let next = idx + bitMask
            if next <= count && tree[next] < rem {
                idx = next
                rem -= tree[next]
            }
            bitMask >>= 1
        }
        return idx
    }
}
