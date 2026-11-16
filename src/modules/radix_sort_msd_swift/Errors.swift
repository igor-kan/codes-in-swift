import Foundation

public enum RadixSwiftError: Error, Sendable, Equatable {
    case invalidSubrange
    case invariantViolation(String)
}
