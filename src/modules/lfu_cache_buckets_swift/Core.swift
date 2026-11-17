public struct LfuBucketCache: FrequencyCache, Sendable {
    private let cap: Int
    private var map: [Int: CacheItem] = [:]
    private var buckets: [Int: [Int]] = [:]
    private var minFreq = 0
    public init(capacity: Int) { self.cap = max(1, capacity) }
    public mutating func get(_ key: Int) -> Int? {
        guard var item = map[key] else { return nil }
        promote(key: key, item: &item)
        map[key] = item
        return item.value
    }
    public mutating func put(_ key: Int, _ val: Int) {
        if var existing = map[key] {
            existing.value = val
            promote(key: key, item: &existing)
            map[key] = existing
            return
        }
        if map.count >= cap, var list = buckets[minFreq], !list.isEmpty {
            let victim = list.removeFirst()
            buckets[minFreq] = list
            map.removeValue(forKey: victim)
        }
        map[key] = CacheItem(value: val, freq: 1)
        buckets[1, default: []].append(key)
        minFreq = 1
    }
    private mutating func promote(key: Int, item: inout CacheItem) {
        var cur = buckets[item.freq] ?? []
        cur.removeAll { $0 == key }
        buckets[item.freq] = cur
        if cur.isEmpty && item.freq == minFreq { minFreq += 1 }
        item.freq += 1
        buckets[item.freq, default: []].append(key)
    }
}
