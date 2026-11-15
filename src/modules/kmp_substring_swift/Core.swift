import Foundation

public struct KmpMatcher: SubstringMatcherProtocol, Sendable {
    public init() {}

    public func compile(pattern: [UInt8]) throws -> KmpPatternPlan {
        guard !pattern.isEmpty else { throw KmpError.emptyPattern }
        var lps = Array(repeating: 0, count: pattern.count)
        var length = 0
        var i = 1
        while i < pattern.count {
            if pattern[i] == pattern[length] {
                length += 1
                lps[i] = length
                i += 1
            } else if length > 0 {
                length = lps[length - 1]
            } else {
                lps[i] = 0
                i += 1
            }
        }
        return KmpPatternPlan(pattern: pattern, lps: lps)
    }

    public func findAll(in text: [UInt8], plan: KmpPatternPlan) -> [Int] {
        let m = plan.pattern.count
        var matches: [Int] = []
        var j = 0
        for i in 0..<text.count {
            while j > 0 && text[i] != plan.pattern[j] {
                j = plan.lps[j - 1]
            }
            if text[i] == plan.pattern[j] {
                j += 1
            }
            if j == m {
                matches.append(i - m + 1)
                j = plan.lps[j - 1]
            }
        }
        return matches
    }
}
