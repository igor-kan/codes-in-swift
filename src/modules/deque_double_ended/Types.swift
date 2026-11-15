import Foundation

public struct DequeMetrics: Sendable, Equatable {
    public var pushFrontCount: Int
    public var pushBackCount: Int
    public var resizeCount: Int
    public var peakCount: Int

    public init(pushFrontCount: Int = 0, pushBackCount: Int = 0, resizeCount: Int = 0, peakCount: Int = 0) {
        self.pushFrontCount = pushFrontCount
        self.pushBackCount = pushBackCount
        self.resizeCount = resizeCount
        self.peakCount = peakCount
    }
}

public struct DequeConfig: Sendable, Equatable {
    public let initialCapacity: Int
    public let shrinkThresholdDivisor: Int

    public init(initialCapacity: Int = 16, shrinkThresholdDivisor: Int = 4) {
        self.initialCapacity = initialCapacity
        self.shrinkThresholdDivisor = shrinkThresholdDivisor
    }
}
