import Foundation

public func runIntervalTreeSwiftProps() throws {
    let items = (0..<40).map { i in
        let l = (i * 19) % 100
        return ClosedInterval(lo: l, hi: l + (i % 12) + 1, payloadId: i)
    }
    for ql in stride(from: 0, to: 100, by: 10) {
        try verifyOverlapsOracle(items: items, queryLo: ql, queryHi: ql + 15)
    }
}
