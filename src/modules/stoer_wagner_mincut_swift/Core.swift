public enum StoerWagner {
    public static func globalMinCut(_ adj: [[Int]]) -> Int {
        let n = adj.count
        var w = adj
        var vtx = Array(0..<n)
        var best = Int.max / 4
        for m in stride(from: n, through: 2, by: -1) {
            var wt = [Int](repeating: 0, count: m)
            var used = [Bool](repeating: false, count: m)
            var prev = -1, last = -1
            for _ in 0..<m {
                var sel = -1
                for i in 0..<m where !used[i] && (sel == -1 || wt[i] > wt[sel]) { sel = i }
                used[sel] = true; prev = last; last = sel
                for i in 0..<m where !used[i] { wt[i] += w[vtx[sel]][vtx[i]] }
            }
            best = min(best, wt[last])
            let u = vtx[prev], v = vtx[last]
            for i in 0..<m {
                let k = vtx[i]
                if k != u && k != v { w[u][k] += w[v][k]; w[k][u] += w[k][v] }
            }
            vtx[last] = vtx[m - 1]
        }
        return best
    }
}
