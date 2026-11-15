import Foundation

public struct UnionJournalEntry: Sendable, Equatable {
    public let child: Int
    public let root: Int
    public let previousRootRank: Int
    public let previousRootSize: Int
}

public struct ComponentStats: Sendable, Equatable {
    public let componentCount: Int
    public let largestSize: Int
}
