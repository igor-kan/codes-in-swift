import Foundation

public func runAhoSwiftPropTests() throws {
    let pats = ["a", "ab", "bab", "bc", "bca", "c", "caa"]
    for doc in ["abccab", "caababaabcaa", "zzzz"] {
        try verifyMatchesAgainstNaive(patterns: pats, text: doc)
    }
}
