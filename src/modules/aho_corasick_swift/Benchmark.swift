import Foundation

public func benchmarkAhoCorasickSwift() -> Int {
    var sink = 0
    for _it in 0..<100 {
        if let ac = try? AhoCorasickAutomaton(patterns: ["he", "she", "hers"]) { sink += ac.matchCount(in: "ushers_he_she") }
    }
    return sink
}
