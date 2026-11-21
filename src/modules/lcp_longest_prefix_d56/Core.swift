public func buildNaiveSa(_ s: [UInt8]) -> [Int] {
    return (0..<s.count).sorted { a, b in
        var i = a
        var j = b
        while i < s.count && j < s.count {
            if s[i] != s[j] { return s[i] < s[j] }
            i += 1; j += 1
        }
        return a > b
    }
}

public func kasaiLcp(_ s: [UInt8], _ sa: [Int]) -> [Int] {
    let n = s.count
    var rank = Array(repeating: 0, count: n)
    for i in 0..<n { rank[sa[i]] = i }
    var lcp = Array(repeating: 0, count: n)
    var k = 0
    for i in 0..<n {
        if rank[i] == n - 1 { k = 0; continue }
        let j = sa[rank[i] + 1]
        while i + k < n && j + k < n && s[i + k] == s[j + k] { k += 1 }
        lcp[rank[i]] = k
        if k > 0 { k -= 1 }
    }
    return lcp
}
