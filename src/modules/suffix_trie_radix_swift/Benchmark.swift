import Foundation

public enum RadixTrieBenchmark {
    public static func measureInsertAndLookup(count: Int = 5_000) -> Duration {
        let clock = ContinuousClock()
        let keys = (0..<count).map { "route/v1/service/\($0)/endpoint" }
        return clock.measure {
            var trie = RadixTrie<Int>()
            for (i, k) in keys.enumerated() {
                try! trie.insert(key: k, value: i)
            }
            var hits = 0
            for k in keys where trie.search(key: k) != nil { hits += 1 }
            precondition(hits == count)
        }
    }
}
