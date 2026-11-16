import Foundation

public func verifyMatchesAgainstNaive(patterns: [String], text: String) throws {
    let ac = try AhoCorasickAutomaton(patterns: patterns)
    let got = Set(ac.matches(in: Array(text.utf8)))
    var expected = Set<AhoMatch>()
    let tBytes = Array(text.utf8)
    for (pid, p) in patterns.enumerated() {
        let pb = Array(p.utf8)
        if pb.count <= tBytes.count {
            for pos in 0...(tBytes.count - pb.count) {
                if Array(tBytes[pos..<(pos + pb.count)]) == pb {
                    expected.insert(AhoMatch(offset: pos, patternIndex: pid))
                }
            }
        }
    }
    if got != expected {
        throw AhoSwiftError.invariantViolation("Aho-Corasick oracle mismatch")
    }
}
