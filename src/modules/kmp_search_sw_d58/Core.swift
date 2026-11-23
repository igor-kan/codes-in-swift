public func kmpFindAllBytes(_ text: [UInt8], _ pat: [UInt8]) -> [Int] {
    guard !pat.isEmpty && text.count >= pat.count else { return [] }
    let m = pat.count
    var pi = Array(repeating: 0, count: m)
    for i in 1..<m {
        var j = pi[i - 1]
        while j > 0 && pat[i] != pat[j] { j = pi[j - 1] }
        if pat[i] == pat[j] { j += 1 }
        pi[i] = j
    }
    var j = 0
    var hits: [Int] = []
    for i in 0..<text.count {
        while j > 0 && text[i] != pat[j] { j = pi[j - 1] }
        if text[i] == pat[j] { j += 1 }
        if j == m {
            hits.append(i - m + 1)
            j = pi[j - 1]
        }
    }
    return hits
}
