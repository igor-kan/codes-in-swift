public struct FenwickBit {
    private var bit: [Int]

    public init(count: Int) {
        self.bit = Array(repeating: 0, count: count + 1)
    }

    public mutating func add(_ idx: Int, _ delta: Int) {
        var i = idx + 1
        while i < bit.count {
            bit[i] += delta
            i += i & (-i)
        }
    }

    public func prefixSum(_ idx: Int) -> Int {
        var s = 0
        var i = idx + 1
        while i > 0 {
            s += bit[i]
            i -= i & (-i)
        }
        return s
    }

    public func rangeSum(_ l: Int, _ r: Int) -> Int {
        return prefixSum(r) - (l > 0 ? prefixSum(l - 1) : 0)
    }
}
