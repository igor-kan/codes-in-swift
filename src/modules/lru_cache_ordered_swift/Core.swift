import Foundation

public struct IntrusiveLruCache<Key: Hashable & Sendable, Value: Sendable>: BoundedCacheProtocol, Sendable {
    public let capacity: Int
    internal var slots: ContiguousArray<LruSlabSlot<Key, Value>?>
    internal var freeList: [Int]
    internal var keyToIndex: [Key: Int] = [:]
    internal var head: Int = -1
    internal var tail: Int = -1
    public private(set) var telemetry = LruTelemetry()

    public var count: Int { keyToIndex.count }

    public init(capacity: Int) throws {
        guard capacity > 0 else { throw LruCacheError.nonPositiveCapacity(capacity) }
        self.capacity = capacity
        self.slots = ContiguousArray(repeating: nil, count: capacity)
        self.freeList = Array((0..<capacity).reversed())
    }

    internal mutating func detach(_ idx: Int) {
        guard let node = slots[idx] else { return }
        if node.prev != -1 {
            slots[node.prev]!.next = node.next
        } else {
            head = node.next
        }
        if node.next != -1 {
            slots[node.next]!.prev = node.prev
        } else {
            tail = node.prev
        }
        slots[idx]!.prev = -1
        slots[idx]!.next = -1
    }

    internal mutating func prependHead(_ idx: Int) {
        slots[idx]!.prev = -1
        slots[idx]!.next = head
        if head != -1 {
            slots[head]!.prev = idx
        }
        head = idx
        if tail == -1 {
            tail = idx
        }
    }

    public mutating func get(_ key: Key) -> Value? {
        guard let idx = keyToIndex[key], let slot = slots[idx] else {
            telemetry.misses += 1
            return nil
        }
        telemetry.hits += 1
        detach(idx)
        prependHead(idx)
        return slot.value
    }

    public mutating func put(_ key: Key, value: Value) {
        if let idx = keyToIndex[key] {
            slots[idx]!.value = value
            detach(idx)
            prependHead(idx)
            return
        }
        let targetIdx: Int
        if let free = freeList.popLast() {
            targetIdx = free
        } else {
            let victimIdx = tail
            let victimKey = slots[victimIdx]!.key
            keyToIndex.removeValue(forKey: victimKey)
            detach(victimIdx)
            slots[victimIdx] = nil
            telemetry.evictions += 1
            targetIdx = victimIdx
        }
        slots[targetIdx] = LruSlabSlot(key: key, value: value, prev: -1, next: -1, occupied: true)
        keyToIndex[key] = targetIdx
        prependHead(targetIdx)
    }
}
