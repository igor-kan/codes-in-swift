import Foundation

public enum DisjointSetBenchmark {
    public static func measureBatch(n: Int = 50_000) -> Duration {
        let clock = ContinuousClock()
        return clock.measure {
            var dsu = FastPathDisjointSet(count: n)
            var merges = 0
            for i in 0..<(n - 1) {
                if dsu.unite(i, i + 1) { merges += 1 }
            }
            precondition(merges == n - 1)
        }
    }
}
