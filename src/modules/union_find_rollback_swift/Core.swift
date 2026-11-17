public struct RollbackDsu: RollbackConnectivity, Sendable {
    private var parent: [Int]
    private var size: [Int]
    private var history: [DsuUndo] = []
    public private(set) var components: Int
    public init(_ n: Int) {
        self.parent = Array(0..<n)
        self.size = [Int](repeating: 1, count: n)
        self.components = n
    }
    public func snapshot() -> Int { history.count }
    public func find(_ x: Int) -> Int {
        var cur = x
        while parent[cur] != cur { cur = parent[cur] }
        return cur
    }
    public mutating func unite(_ a: Int, _ b: Int) -> Bool {
        var ra = find(a), rb = find(b)
        if ra == rb { return false }
        if size[ra] < size[rb] { swap(&ra, &rb) }
        history.append(DsuUndo(child: rb, oldSize: size[ra]))
        parent[rb] = ra
        size[ra] += size[rb]
        components -= 1
        return true
    }
    public mutating func rollback(to mark: Int) {
        while history.count > mark {
            let st = history.removeLast()
            let p = parent[st.child]
            size[p] = st.oldSize
            parent[st.child] = st.child
            components += 1
        }
    }
}
