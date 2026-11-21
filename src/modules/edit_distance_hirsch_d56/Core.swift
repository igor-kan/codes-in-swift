public func levenshteinDist(_ a: String, _ b: String) -> Int {
    let xs = Array(a.unicodeScalars)
    let ys = Array(b.unicodeScalars)
    let m = xs.count
    let n = ys.count
    var prev = Array(0...n)
    var cur = Array(repeating: 0, count: n + 1)
    for i in 1...max(1, m) {
        if m == 0 { return n }
        cur[0] = i
        for j in 1...max(1, n) {
            if n == 0 { return m }
            let cost = (xs[i - 1] == ys[j - 1]) ? 0 : 1
            cur[j] = min(prev[j] + 1, min(cur[j - 1] + 1, prev[j - 1] + cost))
        }
        swap(&prev, &cur)
    }
    return prev[n]
}
