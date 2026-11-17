public struct ZEngine: ZPatternMatcher {
    public init() {}
    public func zArray(_ bytes: [UInt8]) -> [Int] {
        let n = bytes.count
        var z = [Int](repeating: 0, count: n)
        var l = 0, r = 0
        for i in 1..<n {
            if i <= r { z[i] = min(r - i + 1, z[i - l]) }
            while i + z[i] < n && bytes[z[i]] == bytes[i + z[i]] { z[i] += 1 }
            if i + z[i] - 1 > r { l = i; r = i + z[i] - 1 }
        }
        return z
    }
    public func findAll(text: String, pattern: String) -> [Int] {
        let p = Array(pattern.utf8), t = Array(text.utf8)
        guard !p.isEmpty else { return [] }
        let combo = p + [0] + t
        let z = zArray(combo)
        var out = [Int]()
        for i in (p.count + 1)..<z.count where z[i] == p.count {
            out.append(i - p.count - 1)
        }
        return out
    }
}
