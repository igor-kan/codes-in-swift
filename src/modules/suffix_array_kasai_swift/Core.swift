public struct KasaiSuffixBuilder: SuffixIndexBuilder {
    public init() {}
    public func build(_ s: String) throws -> SuffixTable {
        guard !s.isEmpty else { throw ModError.emptyInput }
        let bytes = Array(s.utf8)
        let n = bytes.count
        var sa = Array(0..<n)
        var rk = bytes.map { Int($0) }
        var tmp = [Int](repeating: 0, count: n)
        var step = 1
        while step < n {
            let k = step
            sa.sort { a, b in
                if rk[a] != rk[b] { return rk[a] < rk[b] }
                let ra = a + k < n ? rk[a + k] : -1
                let rb = b + k < n ? rk[b + k] : -1
                return ra < rb
            }
            tmp[sa[0]] = 0
            for i in 1..<n {
                let a = sa[i - 1], b = sa[i]
                let ra = a + k < n ? rk[a + k] : -1
                let rb = b + k < n ? rk[b + k] : -1
                tmp[b] = tmp[a] + ((rk[a] != rk[b] || ra != rb) ? 1 : 0)
            }
            rk = tmp
            if rk[sa[n - 1]] == n - 1 { break }
            step <<= 1
        }
        var inv = [Int](repeating: 0, count: n)
        for i in 0..<n { inv[sa[i]] = i }
        var lcp = [Int](repeating: 0, count: n)
        var h = 0
        for i in 0..<n {
            if inv[i] > 0 {
                let j = sa[inv[i] - 1]
                while i + h < n && j + h < n && bytes[i + h] == bytes[j + h] { h += 1 }
                lcp[inv[i]] = h
                if h > 0 { h -= 1 }
            }
        }
        return SuffixTable(sa: sa, lcp: lcp)
    }
}
