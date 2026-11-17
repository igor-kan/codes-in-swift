public struct TarjanSccEngine: DigraphDecomposer {
    public init() {}
    public func decompose(n: Int, edges: [(Int, Int)]) -> SccSummary {
        var adj = [[Int]](repeating: [], count: n)
        for (u, v) in edges { adj[u].append(v) }
        var dfn = [Int](repeating: -1, count: n)
        var low = [Int](repeating: 0, count: n)
        var comp = [Int](repeating: -1, count: n)
        var onSt = [Bool](repeating: false, count: n)
        var st = [Int]()
        var timer = 0, sccCnt = 0
        func dfs(_ u: Int) {
            dfn[u] = timer; low[u] = timer; timer += 1
            st.append(u); onSt[u] = true
            for w in adj[u] {
                if dfn[w] == -1 { dfs(w); low[u] = min(low[u], low[w]) }
                else if onSt[w] { low[u] = min(low[u], dfn[w]) }
            }
            if low[u] == dfn[u] {
                while let v = st.popLast() {
                    onSt[v] = false; comp[v] = sccCnt
                    if v == u { break }
                }
                sccCnt += 1
            }
        }
        for i in 0..<n where dfn[i] == -1 { dfs(i) }
        return SccSummary(componentOf: comp, count: sccCnt)
    }
}
