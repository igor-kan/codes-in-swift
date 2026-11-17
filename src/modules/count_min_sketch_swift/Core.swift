public struct ConservativeCountMin: FreqEstimator, Sendable {
    private let depth: Int
    private let width: Int
    private var table: [UInt64]
    public init(depth: Int, width: Int) {
        self.depth = depth; self.width = width
        self.table = [UInt64](repeating: 0, count: depth * width)
    }
    private func hash(_ k: UInt64, seed: UInt64) -> Int {
        var z = k ^ (seed &* 0x9E3779B97F4A7C15)
        z = (z ^ (z >> 30)) &* 0xBF58476D1CE4E5B9
        z = (z ^ (z >> 27)) &* 0x94D049BB133111EB
        return Int((z ^ (z >> 31)) % UInt64(width))
    }
    public mutating func add(_ key: UInt64, _ delta: UInt64 = 1) {
        var idxs = [Int](repeating: 0, count: depth)
        var mn = UInt64.max
        for d in 0..<depth {
            let idx = d * width + hash(key, seed: UInt64(d + 1))
            idxs[d] = idx
            if table[idx] < mn { mn = table[idx] }
        }
        let target = mn + delta
        for idx in idxs where table[idx] < target { table[idx] = target }
    }
    public func estimate(_ key: UInt64) -> UInt64 {
        var mn = UInt64.max
        for d in 0..<depth {
            let val = table[d * width + hash(key, seed: UInt64(d + 1))]
            if val < mn { mn = val }
        }
        return mn
    }
}
