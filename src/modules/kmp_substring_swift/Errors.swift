import Foundation

public enum KmpError: Error, Sendable, Equatable {
    case emptyPattern
    case invalidOffsetLimit(Int)
}
