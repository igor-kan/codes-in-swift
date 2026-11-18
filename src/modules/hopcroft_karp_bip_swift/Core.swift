public struct HopcroftKarp: Sendable {
    public static func maxMatching(nL: Int, nR: Int, edges: [(Int, Int)]) -> Int {
        var adj = Array(repeating: [Int](), count: nL)
        for (u, v) in edges { adj[u].append(v) }
        var pairU = [Int](repeating: -1, count: nL)
        var pairV = [Int](repeating: -1, count: nR)
        var dist = [Int](repeating: 0, count: nL)
        func bfs() -> Bool {
            var q = [Int](), head = 0
            for u in 0..<nL {
                if pairU[u] == -1 { dist[u] = 0; q.append(u) }
                else { dist[u] = Int.max }
            }
            var found = false
            while head < q.count {
                let u = q[head]; head += 1
                for v in adj[u] {
                    let u2 = pairV[v]
                    if u2 == -1 { found = true }
                    else if dist[u2] == Int.max { dist[u2] = dist[u] + 1; q.append(u2) }
                }
            }
            return found
        }
        func dfs(_ u: Int) -> Bool {
            for v in adj[u] {
                let u2 = pairV[v]
                if u2 == -1 || (dist[u2] == dist[u] + 1 && dfs(u2)) {
                    pairU[u] = v; pairV[v] = u; return true
                }
            }
            dist[u] = Int.max
            return false
        }
        var size = 0
        while bfs() {
            for u in 0..<nL where pairU[u] == -1 && dfs(u) { size += 1 }
        }
        return size
    }
}
