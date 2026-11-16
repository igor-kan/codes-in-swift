import Foundation

public enum IntervalTreeError: Error, Sendable, Equatable {
    case invertedBounds(lo: Int, hi: Int)
    case invariantViolation(String)
}
