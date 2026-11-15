import Foundation

public enum DisjointSetError: Error, Sendable, Equatable {
    case invalidNodeCount(Int)
    case nodeOutOfRange(node: Int, upperBound: Int)
    case invalidCheckpoint(checkpoint: Int, historyLength: Int)
}
