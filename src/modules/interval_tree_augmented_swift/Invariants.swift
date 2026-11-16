import Foundation

public func verifyOverlapsOracle(items: [ClosedInterval], queryLo: Int, queryHi: Int) throws {
    var tree = AugmentedIntervalTree()
    for iv in items { try tree.insert(iv) }
    let got = Set(tree.findOverlaps(lo: queryLo, hi: queryHi))
    let q = ClosedInterval(lo: queryLo, hi: queryHi, payloadId: -1)
    let expected = Set(items.filter { $0.overlaps(q) })
    if got != expected {
        throw IntervalTreeError.invariantViolation("overlap mismatch for [\(queryLo), \(queryHi)]")
    }
}
