import Foundation

public func runIntervalTreeSwiftTests() throws {
    let items = [
        ClosedInterval(lo: 15, hi: 20, payloadId: 0),
        ClosedInterval(lo: 10, hi: 30, payloadId: 1),
        ClosedInterval(lo: 17, hi: 19, payloadId: 2),
        ClosedInterval(lo: 5, hi: 20, payloadId: 3),
        ClosedInterval(lo: 12, hi: 15, payloadId: 4),
    ]
    try verifyOverlapsOracle(items: items, queryLo: 14, queryHi: 16)
}
