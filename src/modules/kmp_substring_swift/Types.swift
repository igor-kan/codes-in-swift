import Foundation

public struct KmpMatchReport: Sendable, Equatable {
    public let offsets: [Int]
    public let comparisons: Int
}

public struct KmpPatternPlan: Sendable, Equatable {
    public let pattern: [UInt8]
    public let lps: [Int]
}
