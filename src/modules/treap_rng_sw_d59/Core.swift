public struct OrderedMultiset {
    private var sorted: [Int] = []
    public init() {}
    public var count: Int { sorted.count }

    public mutating func insert(_ key: Int) {
        var lo = 0, hi = sorted.count
        while lo < hi {
            let mid = lo + (hi - lo) / 2
            if sorted[mid] < key { lo = mid + 1 } else { hi = mid }
        }
        sorted.insert(key, at: lo)
    }

    public func kth(_ k: Int) -> Int { return sorted[k] }
}
