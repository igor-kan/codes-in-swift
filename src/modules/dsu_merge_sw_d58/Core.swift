public struct DisjointPartition {
    private var parent: [Int]
    private var sz: [Int]
    public private(set) var components: Int

    public init(n: Int) {
        self.parent = Array(0..<n)
        self.sz = Array(repeating: 1, count: n)
        self.components = n
    }

    public mutating func find(_ x: Int) -> Int {
        var cur = x
        while parent[cur] != cur {
            parent[cur] = parent[parent[cur]]
            cur = parent[cur]
        }
        return cur
    }

    @discardableResult
    public mutating func union(_ a: Int, _ b: Int) -> Bool {
        var ra = find(a)
        var rb = find(b)
        if ra == rb { return false }
        if sz[ra] < sz[rb] { swap(&ra, &rb) }
        parent[rb] = ra
        sz[ra] += sz[rb]
        components -= 1
        return true
    }
}
