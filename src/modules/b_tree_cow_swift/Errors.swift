import Foundation

public enum BTreeCowError: Error, Sendable, Equatable {
    case invalidDegree(Int)
    case emptyTree
    case invariantViolation(String)
}
