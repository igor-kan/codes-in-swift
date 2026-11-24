public struct Pt2I: Equatable, Comparable {
    public let x: Int
    public let y: Int
    public static func < (lhs: Pt2I, rhs: Pt2I) -> Bool {
        return lhs.x == rhs.x ? lhs.y < rhs.y : lhs.x < rhs.x
    }
}

public func convexHull2D(_ ptsIn: [Pt2I]) -> [Pt2I] {
    let pts = ptsIn.sorted()
    if pts.count <= 2 { return pts }
    func cross(_ o: Pt2I, _ a: Pt2I, _ b: Pt2I) -> Int {
        return (a.x - o.x) * (b.y - o.y) - (a.y - o.y) * (b.x - o.x)
    }
    var lo: [Pt2I] = []
    for p in pts {
        while lo.count >= 2 && cross(lo[lo.count - 2], lo[lo.count - 1], p) <= 0 { lo.removeLast() }
        lo.append(p)
    }
    var hi: [Pt2I] = []
    for p in pts.reversed() {
        while hi.count >= 2 && cross(hi[hi.count - 2], hi[hi.count - 1], p) <= 0 { hi.removeLast() }
        hi.append(p)
    }
    lo.removeLast(); hi.removeLast()
    return lo + hi
}
