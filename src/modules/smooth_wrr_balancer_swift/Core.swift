public final class SmoothWRR {
    private let weights: [Int]
    private var current: [Int]
    private let total: Int
    public init(_ weights: [Int]) {
        self.weights = weights
        self.current = [Int](repeating: 0, count: weights.count)
        self.total = weights.reduce(0, +)
    }
    public func nextPeer() -> Int {
        var best = 0
        for i in 0..<weights.count {
            current[i] += weights[i]
            if current[i] > current[best] { best = i }
        }
        current[best] -= total
        return best
    }
}
