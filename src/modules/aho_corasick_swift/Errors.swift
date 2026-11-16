import Foundation

public enum AhoSwiftError: Error, Sendable, Equatable {
    case emptyPatternSet
    case emptyPatternEntry(index: Int)
    case invariantViolation(String)
}
