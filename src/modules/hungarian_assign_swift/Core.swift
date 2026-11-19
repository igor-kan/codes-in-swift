public enum HungarianSolver {
    public static func minCost(_ cost: [[Int]]) -> Int {
        let n = cost.count
        let inf = Int.max / 4
        var u = [Int](repeating: 0, count: n + 1)
        var v = [Int](repeating: 0, count: n + 1)
        var p = [Int](repeating: 0, count: n + 1)
        var way = [Int](repeating: 0, count: n + 1)
        for i in 1...n {
            p[0] = i
            var j0 = 0
            var minv = [Int](repeating: inf, count: n + 1)
            var used = [Bool](repeating: false, count: n + 1)
            while true {
                used[j0] = true
                let i0 = p[j0]
                var delta = inf, j1 = 0
                for j in 1...n where !used[j] {
                    let cur = cost[i0 - 1][j - 1] - u[i0] - v[j]
                    if cur < minv[j] { minv[j] = cur; way[j] = j0 }
                    if minv[j] < delta { delta = minv[j]; j1 = j }
                }
                for j in 0...n {
                    if used[j] { u[p[j]] += delta; v[j] -= delta } else { minv[j] -= delta }
                }
                j0 = j1
                if p[j0] == 0 { break }
            }
            while true {
                let j1 = way[j0]; p[j0] = p[j1]; j0 = j1
                if j0 == 0 { break }
            }
        }
        return -v[0]
    }
}
