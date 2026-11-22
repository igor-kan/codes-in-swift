public struct MinBinaryHeap<T: Comparable> {
    private var storage: [T] = []
    public init() {}
    public var isEmpty: Bool { storage.isEmpty }

    public mutating func push(_ x: T) {
        storage.append(x)
        var i = storage.count - 1
        while i > 0 {
            let p = (i - 1) / 2
            if storage[i] < storage[p] {
                storage.swapAt(i, p)
                i = p
            } else { break }
        }
    }

    public mutating func popMin() -> T? {
        guard !storage.isEmpty else { return nil }
        if storage.count == 1 { return storage.removeLast() }
        let top = storage[0]
        storage[0] = storage.removeLast()
        var i = 0
        while true {
            let l = 2 * i + 1, r = 2 * i + 2
            var smallest = i
            if l < storage.count && storage[l] < storage[smallest] { smallest = l }
            if r < storage.count && storage[r] < storage[smallest] { smallest = r }
            if smallest == i { break }
            storage.swapAt(i, smallest)
            i = smallest
        }
        return top
    }
}
