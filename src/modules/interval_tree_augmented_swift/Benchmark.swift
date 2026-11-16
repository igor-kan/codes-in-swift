import Foundation

public func benchmarkIntervalTreeAugmentedSwift() -> Int {
    var sink = 0
    for _it in 0..<100 {
        var tr = AugmentedIntervalTree(); for i in 0..<64 { try? tr.insert(ClosedInterval(lo: i * 2, hi: i * 2 + 5, payloadId: i)) }; sink += tr.findOverlaps(lo: 20, hi: 50).count
    }
    return sink
}
