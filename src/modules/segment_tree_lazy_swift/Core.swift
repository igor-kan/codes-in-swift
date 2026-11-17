public final class LazySegmentTree: RangeAccumulator {
    private let n: Int
    private var tree: [Int64]
    private var lazy: [Int64]
    public init(_ n: Int) {
        self.n = n
        self.tree = [Int64](repeating: 0, count: 4 * n + 4)
        self.lazy = [Int64](repeating: 0, count: 4 * n + 4)
    }
    private func push(_ v: Int, _ tl: Int, _ tr: Int) {
        if lazy[v] != 0 {
            let tm = (tl + tr) / 2
            tree[2 * v] += lazy[v] * Int64(tm - tl + 1)
            lazy[2 * v] += lazy[v]
            tree[2 * v + 1] += lazy[v] * Int64(tr - tm)
            lazy[2 * v + 1] += lazy[v]
            lazy[v] = 0
        }
    }
    public func add(_ l: Int, _ r: Int, _ delta: Int64) { addRec(1, 0, n - 1, l, r, delta) }
    private func addRec(_ v: Int, _ tl: Int, _ tr: Int, _ l: Int, _ r: Int, _ val: Int64) {
        if l > r { return }
        if l == tl && r == tr { tree[v] += val * Int64(tr - tl + 1); lazy[v] += val; return }
        push(v, tl, tr)
        let tm = (tl + tr) / 2
        addRec(2 * v, tl, tm, l, min(r, tm), val)
        addRec(2 * v + 1, tm + 1, tr, max(l, tm + 1), r, val)
        tree[v] = tree[2 * v] + tree[2 * v + 1]
    }
    public func sum(_ l: Int, _ r: Int) -> Int64 { return sumRec(1, 0, n - 1, l, r) }
    private func sumRec(_ v: Int, _ tl: Int, _ tr: Int, _ l: Int, _ r: Int) -> Int64 {
        if l > r { return 0 }
        if l == tl && r == tr { return tree[v] }
        push(v, tl, tr)
        let tm = (tl + tr) / 2
        return sumRec(2 * v, tl, tm, l, min(r, tm)) + sumRec(2 * v + 1, tm + 1, tr, max(l, tm + 1), r)
    }
}
