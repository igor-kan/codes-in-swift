public final class LiChaoTree {
    struct Line { var m: Int; var b: Int; func eval(_ x: Int) -> Int { m * x + b } }
    private let dom: Int
    private var tree: [Line]
    public init(dom: Int) {
        self.dom = dom
        self.tree = Array(repeating: Line(m: 0, b: Int.max / 4), count: 4 * dom + 4)
    }
    public func addLine(m: Int, b: Int) { ins(1, 0, dom - 1, Line(m: m, b: b)) }
    private func ins(_ v: Int, _ l: Int, _ r: Int, _ nwIn: Line) {
        var nw = nwIn
        let mid = (l + r) >> 1
        let lb = nw.eval(l) < tree[v].eval(l)
        let mb = nw.eval(mid) < tree[v].eval(mid)
        if mb { swap(&tree[v], &nw) }
        if l == r { return }
        if lb != mb { ins(v << 1, l, mid, nw) } else { ins((v << 1) | 1, mid + 1, r, nw) }
    }
    public func query(_ x: Int) -> Int {
        var v = 1, l = 0, r = dom - 1, best = Int.max / 4
        while true {
            best = min(best, tree[v].eval(x))
            if l == r { return best }
            let mid = (l + r) >> 1
            if x <= mid { v <<= 1; r = mid } else { v = (v << 1) | 1; l = mid + 1 }
        }
    }
}
