import Foundation

public struct FenwickRangeQuery: Sendable, Equatable {
    public let left: Int
    public let right: Int
}

public struct FenwickSnapshot: Sendable, Equatable {
    public let totalSum: Int64
    public let length: Int
}
