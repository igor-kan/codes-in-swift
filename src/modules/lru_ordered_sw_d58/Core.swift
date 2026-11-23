public struct StampedLru<K: Hashable, V> {
    private let cap: Int
    private var tick = 0
    private var store: [K: (val: V, stamp: Int)] = [:]

    public init(capacity: Int) { self.cap = max(1, capacity) }

    public mutating func get(_ key: K) -> V? {
        guard let cur = store[key] else { return nil }
        tick += 1
        store[key] = (cur.val, tick)
        return cur.val
    }

    public mutating func put(_ key: K, _ val: V) {
        tick += 1
        if store[key] == nil && store.count >= cap {
            if let victim = store.min(by: { $0.value.stamp < $1.value.stamp })?.key {
                store.removeValue(forKey: victim)
            }
        }
        store[key] = (val, tick)
    }
}
