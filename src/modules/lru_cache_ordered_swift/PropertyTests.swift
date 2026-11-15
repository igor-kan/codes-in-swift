import Foundation

public enum LruPropertyTests {
    public static func runWorkloadTrace(steps: Int = 300) {
        var cache = try! IntrusiveLruCache<Int, Int>(capacity: 8)
        var rng: UInt64 = 0x517CC1B727220A95
        for i in 0..<steps {
            rng = rng &* 6364136223846793005 &+ 1
            let key = Int((rng >> 32) % 16)
            if (rng & 1) == 0 {
                cache.put(key, value: i)
            } else {
                _ = cache.get(key)
            }
            assert(LruInvariants.verify(cache))
        }
    }
}
