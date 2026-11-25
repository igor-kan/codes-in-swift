public struct RingDeque<Element: Sendable>: Sendable, TaggedAlgorithm {
    private var buf: [Element?]
    private var head: Int = 0
    private var countStorage: Int = 0
    public var count: Int { countStorage }
    public var isEmpty: Bool { countStorage == 0 }
    public init(initialCapacity: Int = 8) {
        let cap = max(4, initialCapacity)
        self.buf = Array(repeating: nil, count: cap)
    }
    private mutating func grow() {
        let newCap = buf.count * 2
        var next = [Element?](repeating: nil, count: newCap)
        for i in 0..<countStorage {
            next[i] = buf[(head + i) % buf.count]
        }
        buf = next
        head = 0
    }
    public mutating func pushBack(_ x: Element) {
        if countStorage == buf.count { grow() }
        let idx = (head + countStorage) % buf.count
        buf[idx] = x
        countStorage += 1
    }
    public mutating func pushFront(_ x: Element) {
        if countStorage == buf.count { grow() }
        head = (head - 1 + buf.count) % buf.count
        buf[head] = x
        countStorage += 1
    }
    public mutating func popFront() -> Element? {
        guard countStorage > 0 else { return nil }
        let val = buf[head]
        buf[head] = nil
        head = (head + 1) % buf.count
        countStorage -= 1
        return val
    }
}
