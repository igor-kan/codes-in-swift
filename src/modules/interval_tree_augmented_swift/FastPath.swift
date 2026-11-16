import Foundation

public func countOverlappingIds(_ tree: AugmentedIntervalTree, lo: Int, hi: Int) -> Int {
    guard lo <= hi else { return 0 }
    return tree.findOverlaps(lo: lo, hi: hi).count
}
