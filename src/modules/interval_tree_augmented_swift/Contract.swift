import Foundation

public protocol IntervalSearchContract: Sendable {
    mutating func insert(_ iv: ClosedInterval) throws
    func findOverlaps(lo: Int, hi: Int) -> [ClosedInterval]
}
