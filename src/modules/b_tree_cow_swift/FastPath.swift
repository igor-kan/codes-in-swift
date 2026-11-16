import Foundation

public func rangeKeys<V: Sendable>(_ tree: CowBTree<V>, lo: Int, hi: Int) -> [Int] {
    guard lo <= hi else { return [] }
    let all = tree.sortedPairs()
    return all.compactMap { ($0.0 >= lo && $0.0 <= hi) ? $0.0 : nil }
}
