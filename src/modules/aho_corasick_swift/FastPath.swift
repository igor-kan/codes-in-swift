import Foundation

public func countAsciiHits(automaton: AhoCorasickAutomaton, text: String) -> Int {
    guard !text.isEmpty else { return 0 }
    return automaton.matchCount(in: text)
}

public func hasAnyMatch(automaton: AhoCorasickAutomaton, text: String) -> Bool {
    return countAsciiHits(automaton: automaton, text: text) > 0
}
