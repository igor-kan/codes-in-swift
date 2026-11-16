import Foundation

public struct ClosedInterval: Sendable, Equatable, Hashable {
    public let lo: Int
    public let hi: Int
    public let payloadId: Int

    public init(lo: Int, hi: Int, payloadId: Int) {
        self.lo = lo
        self.hi = hi
        self.payloadId = payloadId
    }

    public func overlaps(_ other: ClosedInterval) -> Bool {
        return lo <= other.hi && other.lo <= hi
    }
}
