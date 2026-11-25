public struct BinaryMinHeap<Element: Comparable & Sendable>: Sendable, TaggedAlgorithm {
    private var data: [Element] = []
    public init() {}
    public var count: Int { data.count }
    public var isEmpty: Bool { data.isEmpty }
    public mutating func push(_ value: Element) {
        data.append(value)
        var idx = data.count - 1
        while idx > 0 {
            let p = (idx - 1) >> 1
            if data[idx] < data[p] {
                data.swapAt(idx, p)
                idx = p
            } else { break }
        }
    }
    public mutating func pop() -> Element? {
        guard !data.isEmpty else { return nil }
        if data.count == 1 { return data.removeLast() }
        let top = data[0]
        data[0] = data.removeLast()
        var idx = 0
        while true {
            let l = 2 * idx + 1, r = l + 1
            var sm = idx
            if l < data.count && data[l] < data[sm] { sm = l }
            if r < data.count && data[r] < data[sm] { sm = r }
            if sm == idx { break }
            data.swapAt(idx, sm)
            idx = sm
        }
        return top
    }
}
