public struct VoseAlias: Sendable {
    public let prob: [Double]
    public let alias: [Int]
    public init(_ weights: [Double]) {
        let n = weights.count
        let sum = weights.reduce(0.0, +)
        var scaled = weights.map { $0 * Double(n) / sum }
        var p = [Double](repeating: 1.0, count: n)
        var a = Array(0..<n)
        var small = [Int](), large = [Int]()
        for i in 0..<n { if scaled[i] < 1.0 { small.append(i) } else { large.append(i) } }
        while let s = small.popLast(), let l = large.popLast() {
            p[s] = scaled[s]; a[s] = l
            scaled[l] = (scaled[l] + scaled[s]) - 1.0
            if scaled[l] < 1.0 { small.append(l) } else { large.append(l) }
        }
        self.prob = p; self.alias = a
    }
    public func sample(bucket: Int, u01: Double) -> Int {
        u01 < prob[bucket] ? bucket : alias[bucket]
    }
}
