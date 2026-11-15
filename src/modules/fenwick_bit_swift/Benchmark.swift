import Foundation

public enum FenwickBenchmark {
    public static func measureUpdates(size: Int = 50_000, ops: Int = 100_000) -> Duration {
        let clock = ContinuousClock()
        var ft = try! FenwickTree(count: size)
        return clock.measure {
            var acc: Int64 = 0
            for i in 0..<ops {
                try! ft.add(1, at: i % size)
                if (i & 3) == 0 {
                    acc &+= try! ft.prefixSum(through: i % size)
                }
            }
            precondition(acc > 0)
        }
    }
}
