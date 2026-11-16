import Foundation

public struct RadixSortStats: Sendable, Equatable {
    public let sortedCount: Int
    public let bucketsPerPass: Int

    public init(sortedCount: Int, bucketsPerPass: Int = 256) {
        self.sortedCount = sortedCount
        self.bucketsPerPass = bucketsPerPass
    }
}
