public func rabinKarpBytes(_ text: [UInt8], _ pat: [UInt8]) -> [Int] {
    guard !pat.isEmpty && text.count >= pat.count else { return [] }
    let n = text.count, m = pat.count
    let mod: Int64 = 1_000_000_007
    let base: Int64 = 257
    var pow: Int64 = 1
    for _ in 0..<(m - 1) { pow = (pow * base) % mod }
    var ph: Int64 = 0, th: Int64 = 0
    for i in 0..<m {
        ph = (ph * base + Int64(pat[i])) % mod
        th = (th * base + Int64(text[i])) % mod
    }
    var hits: [Int] = []
    for i in 0...(n - m) {
        if th == ph && Array(text[i..<(i + m)]) == pat { hits.append(i) }
        if i < n - m {
            th = (th - (Int64(text[i]) * pow) % mod + mod) % mod
            th = (th * base + Int64(text[i + m])) % mod
        }
    }
    return hits
}
