import Foundation

public struct FastPathDisjointSet: Sendable {
    private var parent: ContiguousArray<Int32>
    private var size: ContiguousArray<Int32>

    public init(count: Int) {
        self.parent = ContiguousArray((0..<Int32(count)))
        self.size = ContiguousArray(repeating: 1, count: count)
    }

    public mutating func find(_ x: Int) -> Int {
        var cur = x
        while Int(parent[cur]) != cur {
            let p = Int(parent[cur])
            parent[cur] = parent[p]
            cur = p
        }
        return cur
    }

    public mutating func unite(_ a: Int, _ b: Int) -> Bool {
        var ra = find(a)
        var rb = find(b)
        if ra == rb { return false }
        if size[ra] < size[rb] { swap(&ra, &rb) }
        parent[rb] = Int32(ra)
        size[ra] += size[rb]
        return true
    }
}
