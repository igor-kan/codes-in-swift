import Foundation

public enum LruInvariants {
    public static func verify<K: Hashable & Sendable, V: Sendable>(_ cache: IntrusiveLruCache<K, V>) -> Bool {
        let forward = cache.mostRecentOrder()
        guard forward.count == cache.count && cache.count <= cache.capacity else { return false }
        var seen: Set<K> = []
        for k in forward {
            if !seen.insert(k).inserted { return false }
        }
        if cache.count == 0 {
            return cache.head == -1 && cache.tail == -1
        }
        return cache.head != -1 && cache.tail != -1
    }
}
