import Foundation

public struct RingDeque<Element: Sendable>: DoubleEndedQueueProtocol, Sendable {
    internal var storage: [Element?]
    internal var head: Int = 0
    public private(set) var count: Int = 0
    public private(set) var metrics = DequeMetrics()

    public var capacity: Int { storage.count }
    public var isEmpty: Bool { count == 0 }

    public init(minimumCapacity: Int = 16) {
        let cap = RingDeque.nextPowerOfTwo(max(4, minimumCapacity))
        self.storage = Array(repeating: nil, count: cap)
    }

    internal static func nextPowerOfTwo(_ n: Int) -> Int {
        var v = 1
        while v < n { v <<= 1 }
        return v
    }

    internal func physicalIndex(_ logicalOffset: Int) -> Int {
        return (head + logicalOffset) & (storage.count - 1)
    }

    internal mutating func reallocate(to newCap: Int) {
        var next: [Element?] = Array(repeating: nil, count: newCap)
        let mask = storage.count - 1
        for i in 0..<count {
            next[i] = storage[(head + i) & mask]
        }
        storage = next
        head = 0
        metrics.resizeCount += 1
    }

    public mutating func pushBack(_ element: Element) {
        if count == storage.count {
            reallocate(to: storage.count << 1)
        }
        let idx = physicalIndex(count)
        storage[idx] = element
        count += 1
        metrics.pushBackCount += 1
        if count > metrics.peakCount { metrics.peakCount = count }
    }

    public mutating func pushFront(_ element: Element) {
        if count == storage.count {
            reallocate(to: storage.count << 1)
        }
        head = (head - 1) & (storage.count - 1)
        storage[head] = element
        count += 1
        metrics.pushFrontCount += 1
        if count > metrics.peakCount { metrics.peakCount = count }
    }

    public mutating func popFront() -> Element? {
        guard count > 0 else { return nil }
        let elem = storage[head]
        storage[head] = nil
        head = (head + 1) & (storage.count - 1)
        count -= 1
        if storage.count > 16 && count * 4 <= storage.count {
            reallocate(to: max(16, storage.count >> 1))
        }
        return elem
    }

    public mutating func popBack() -> Element? {
        guard count > 0 else { return nil }
        let tailIdx = physicalIndex(count - 1)
        let elem = storage[tailIdx]
        storage[tailIdx] = nil
        count -= 1
        if storage.count > 16 && count * 4 <= storage.count {
            reallocate(to: max(16, storage.count >> 1))
        }
        return elem
    }

    public func peekFront() throws -> Element {
        guard count > 0, let elem = storage[head] else { throw DequeError.emptyQueue }
        return elem
    }

    public func peekBack() throws -> Element {
        guard count > 0, let elem = storage[physicalIndex(count - 1)] else { throw DequeError.emptyQueue }
        return elem
    }

    public func element(at index: Int) throws -> Element {
        guard index >= 0 && index < count else {
            throw DequeError.indexOutOfBounds(index: index, count: count)
        }
        return storage[physicalIndex(index)]!
    }
}
