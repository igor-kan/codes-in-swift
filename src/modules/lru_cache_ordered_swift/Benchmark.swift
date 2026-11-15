import Foundation

public enum LruBenchmark {
    public static func measureThroughput(ops: Int = 100_000) -> Duration {
        let clock = ContinuousClock()
        var cache = try! IntrusiveLruCache<Int, Int>(capacity: 1024)
        return clock.measure {
            var sum = 0
            for i in 0..<ops {
                let k = i & 2047
                if let v = cache.get(k) {
                    sum &+= v
                } else {
                    cache.put(k, value: i)
                }
            }
            precondition(sum >= 0)
        }
    }
}
