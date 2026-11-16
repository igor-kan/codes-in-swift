import Foundation

public enum ImplicitTreapError: Error, Sendable, Equatable {
    case rangeOutOfBounds(lo: Int, hi: Int, count: Int)
    case invariantViolation(String)
}
