import Foundation

public func batchScanStrings(automaton: AhoCorasickAutomaton, corpus: [String]) async -> [Int] {
    var counts = [Int]()
    counts.reserveCapacity(corpus.count)
    for doc in corpus {
        counts.append(automaton.matchCount(in: doc))
    }
    return counts
}
