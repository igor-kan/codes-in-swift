import Foundation

public actor ConcurrentDequeChannel<Element: Sendable> {
    private var deque: RingDeque<Element>

    public init(capacity: Int = 32) {
        self.deque = RingDeque<Element>(minimumCapacity: capacity)
    }

    public func enqueueBackBatch(_ items: [Element]) {
        for item in items { deque.pushBack(item) }
    }

    public func stealBack() -> Element? {
        return deque.popBack()
    }

    public func takeFront() -> Element? {
        return deque.popFront()
    }

    public func snapshotCount() -> Int {
        return deque.count
    }
}
