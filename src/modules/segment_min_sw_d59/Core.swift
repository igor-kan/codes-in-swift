public struct IterSegMin {
    private let n: Int
    private var t: [Int]

    public init(_ xs: [Int]) {
        self.n = xs.count
        self.t = Array(repeating: Int.max, count: 2 * n)
        for i in 0..<n { t[n + i] = xs[i] }
        if n > 1 {
            for i in stride(from: n - 1, through: 1, by: -1) {
                t[i] = min(t[i << 1], t[(i << 1) | 1])
            }
        }
    }

    public mutating func update(_ pos: Int, _ val: Int) {
        var i = pos + n
        t[i] = val
        while i > 1 {
            i >>= 1
            t[i] = min(t[i << 1], t[(i << 1) | 1])
        }
    }

    public func queryMin(_ left: Int, _ right: Int) -> Int {
        var l = left + n
        var r = right + n
        var res = Int.max
        while l < r {
            if (l & 1) == 1 { res = min(res, t[l]); l += 1 }
            if (r & 1) == 1 { r -= 1; res = min(res, t[r]) }
            l >>= 1; r >>= 1
        }
        return res
    }
}
