import Foundation

public func batchOverlapCounts(_ tree: AugmentedIntervalTree, queries: [(Int, Int)]) -> [Int] {
    var counts = [Int]()
    counts.reserveCapacity(queries.count)
    for (lo, hi) in queries {
        counts.append(tree.findOverlaps(lo: lo, hi: hi).count)
    }
    return counts
}
