public struct DisjointSet: Sendable, TaggedAlgorithm {
    private var parent: [Int]
    private var sz: [Int]
    public private(set) var components: Int
    public init(count: Int) {
        self.parent = Array(0..<count)
        self.sz = Array(repeating: 1, count: count)
        self.components = count
    }
    public mutating func find(_ x: Int) -> Int {
        var v = x
        while parent[v] != v {
            parent[v] = parent[parent[v]]
            v = parent[v]
        }
        return v
    }
    @discardableResult
    public mutating func unite(_ a: Int, _ b: Int) -> Bool {
        var ra = find(a), rb = find(b)
        if ra == rb { return false }
        if sz[ra] < sz[rb] { swap(&ra, &rb) }
        parent[rb] = ra
        sz[ra] += sz[rb]
        components -= 1
        return true
    }
    public mutating func componentSize(_ x: Int) -> Int { sz[find(x)] }
}
