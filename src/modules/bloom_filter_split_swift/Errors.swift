import Foundation

public enum BloomSwiftError: Error, Sendable, Equatable {
    case invalidCapacity
    case incompatibleUnion
    case invariantViolation(String)
}
