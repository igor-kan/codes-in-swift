public func topoSortKahn(_ n: Int, _ edges: [(Int, Int)]) -> [Int]? {
    var adj = Array(repeating: [Int](), count: n)
    var ind = Array(repeating: 0, count: n)
    for (u, v) in edges { adj[u].append(v); ind[v] += 1 }
    var q: [Int] = []
    for i in 0..<n where ind[i] == 0 { q.append(i) }
    var head = 0
    while head < q.count {
        let u = q[head]; head += 1
        for v in adj[u] {
            ind[v] -= 1
            if ind[v] == 0 { q.append(v) }
        }
    }
    return q.count == n ? q : nil
}
