public struct CircularDeque<T> {
    private var buf: [T?]
    private var head: Int = 0
    private var count: Int = 0

    public init(capacity: Int = 8) {
        let cap = max(2, capacity)
        self.buf = Array(repeating: nil, count: cap)
    }

    public var isEmpty: Bool { count == 0 }

    public mutating func pushBack(_ x: T) {
        if count == buf.count { grow() }
        let idx = (head + count) % buf.count
        buf[idx] = x
        count += 1
    }

    public mutating func popFront() -> T? {
        guard count > 0 else { return nil }
        let v = buf[head]
        buf[head] = nil
        head = (head + 1) % buf.count
        count -= 1
        return v
    }

    private mutating func grow() {
        var next: [T?] = Array(repeating: nil, count: buf.count * 2)
        for i in 0..<count {
            next[i] = buf[(head + i) % buf.count]
        }
        buf = next
        head = 0
    }
}
