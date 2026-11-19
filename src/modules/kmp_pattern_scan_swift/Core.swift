public struct KmpMatcher: Sendable {
    public static func search(text: String, pattern: String) -> [Int] {
        let t = Array(text.utf8), p = Array(pattern.utf8)
        let m = p.count
        guard m > 0 else { return [] }
        var pi = [Int](repeating: 0, count: m)
        var j = 0
        for i in 1..<m {
            while j > 0 && p[i] != p[j] { j = pi[j - 1] }
            if p[i] == p[j] { j += 1 }
            pi[i] = j
        }
        var hits = [Int]()
        j = 0
        for i in 0..<t.count {
            while j > 0 && t[i] != p[j] { j = pi[j - 1] }
            if t[i] == p[j] { j += 1 }
            if j == m { hits.append(i - m + 1); j = pi[j - 1] }
        }
        return hits
    }
}
