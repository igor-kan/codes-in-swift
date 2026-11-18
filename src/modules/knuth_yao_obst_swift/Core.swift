public enum ObstSolver {
    public static func solve(_ freq: [Int]) -> Int {
        let n = freq.count
        var pref = [Int](repeating: 0, count: n + 1)
        for i in 0..<n { pref[i + 1] = pref[i] + freq[i] }
        var dp = Array(repeating: [Int](repeating: 0, count: n), count: n)
        var opt = Array(repeating: [Int](repeating: 0, count: n), count: n)
        for i in 0..<n { dp[i][i] = freq[i]; opt[i][i] = i }
        if n >= 2 {
            for len in 2...n {
                for i in 0...(n - len) {
                    let j = i + len - 1
                    let w = pref[j + 1] - pref[i]
                    var best = Int.max / 4, br = i
                    for r in opt[i][j - 1]...opt[i + 1][j] {
                        let left = r > i ? dp[i][r - 1] : 0
                        let right = r < j ? dp[r + 1][j] : 0
                        let cand = left + right + w
                        if cand < best { best = cand; br = r }
                    }
                    dp[i][j] = best; opt[i][j] = br
                }
            }
        }
        return dp[0][n - 1]
    }
}
