import Foundation

public enum LruUnitTests {
    public static func runAll() {
        var cache = try! IntrusiveLruCache<String, Int>(capacity: 2)
        cache.put("a", value: 1)
        cache.put("b", value: 2)
        assert(cache.get("a") == 1)
        cache.put("c", value: 3)
        assert(cache.get("b") == nil)
        assert(cache.get("a") == 1)
        assert(cache.get("c") == 3)
        assert(cache.telemetry.evictions == 1)
        assert(LruInvariants.verify(cache))
    }
}
