import Foundation

public enum FenwickError: Error, Sendable, Equatable {
    case nonPositiveSize(Int)
    case indexOutOfBounds(Int)
    case invalidRange(left: Int, right: Int)
    case negativeTargetForOrderSearch(Int64)
}
