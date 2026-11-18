public final class DinicFlow {
    struct Edge { var to: Int; var rev: Int; var cap: Int }
    private var adj: [[Edge]]
    public init(n: Int) { self.adj = Array(repeating: [], count: n) }
    public func addEdge(_ u: Int, _ v: Int, _ cap: Int) {
        adj[u].append(Edge(to: v, rev: adj[v].count, cap: cap))
        adj[v].append(Edge(to: u, rev: adj[u].count - 1, cap: 0))
    }
    public func maxFlow(s: Int, t: Int) -> Int {
        let n = adj.count
        var flow = 0
        while true {
            var level = [Int](repeating: -1, count: n)
            level[s] = 0
            var q = [s], head = 0
            while head < q.count {
                let u = q[head]; head += 1
                for e in adj[u] where e.cap > 0 && level[e.to] < 0 {
                    level[e.to] = level[u] + 1
                    q.append(e.to)
                }
            }
            if level[t] < 0 { break }
            var ptr = [Int](repeating: 0, count: n)
            func dfs(_ u: Int, _ pushed: Int) -> Int {
                if pushed == 0 || u == t { return pushed }
                while ptr[u] < adj[u].count {
                    let cid = ptr[u]
                    let e = adj[u][cid]
                    if level[e.to] == level[u] + 1 && e.cap > 0 {
                        let tr = dfs(e.to, min(pushed, e.cap))
                        if tr > 0 {
                            adj[u][cid].cap -= tr
                            adj[e.to][e.rev].cap += tr
                            return tr
                        }
                    }
                    ptr[u] += 1
                }
                return 0
            }
            while true {
                let p = dfs(s, Int.max / 4)
                if p == 0 { break }
                flow += p
            }
        }
        return flow
    }
}
