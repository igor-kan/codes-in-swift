public struct ManacherEngine: PalinAnalyzer {
    public init() {}
    public func analyze(_ s: String) throws -> PalinMetrics {
        guard !s.isEmpty else { throw ModError.emptyInput }
        let bytes = Array(s.utf8)
        let n = bytes.count
        var t = ContiguousArray<UInt8>(repeating: 35, count: 2 * n + 3)
        t[0] = 94; t[2 * n + 2] = 36
        for i in 0..<n { t[2 * i + 2] = bytes[i] }
        let m = t.count
        var p = ContiguousArray<Int>(repeating: 0, count: m)
        var center = 0, right = 0, bestLen = 0, bestCenter = 0, total = 0
        for i in 1..<(m - 1) {
            let mirror = 2 * center - i
            if i < right { p[i] = min(right - i, p[mirror]) }
            while t[i + 1 + p[i]] == t[i - 1 - p[i]] { p[i] += 1 }
            if i + p[i] > right { center = i; right = i + p[i] }
            if p[i] > bestLen { bestLen = p[i]; bestCenter = i }
            total += (p[i] + 1) / 2
        }
        return PalinMetrics(start: (bestCenter - bestLen) / 2, length: bestLen, total: total)
    }
}
