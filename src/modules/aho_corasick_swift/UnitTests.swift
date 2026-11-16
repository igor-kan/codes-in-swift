import Foundation

public func runAhoSwiftTests() throws {
    let pats = ["he", "she", "his", "hers"]
    let ac = try AhoCorasickAutomaton(patterns: pats)
    assert(ac.matchCount(in: "ushers") == 3)
    try verifyMatchesAgainstNaive(patterns: pats, text: "ushers")
}
