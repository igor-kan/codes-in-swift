import Foundation

public enum DequeError: Error, Sendable, Equatable {
    case emptyQueue
    case indexOutOfBounds(index: Int, count: Int)
    case invalidCapacity(requested: Int)
    case invalidShrinkDivisor(divisor: Int)
}
