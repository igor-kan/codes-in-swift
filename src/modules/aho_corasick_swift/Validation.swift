import Foundation

public func validatePatternsNonEmpty(_ patterns: [String]) throws {
    if patterns.isEmpty { throw AhoSwiftError.emptyPatternSet }
    for (i, p) in patterns.enumerated() where p.utf8.isEmpty {
        throw AhoSwiftError.emptyPatternEntry(index: i)
    }
}
