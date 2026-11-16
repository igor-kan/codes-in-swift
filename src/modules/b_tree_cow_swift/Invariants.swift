import Foundation

public func verifyOrderedInvariants<V: Sendable>(_ tree: CowBTree<V>) throws {
    let pairs = tree.sortedPairs()
    if pairs.count != tree.count { throw BTreeCowError.invariantViolation("count drift") }
    for i in 1..<pairs.count {
        if pairs[i - 1].0 >= pairs[i].0 {
            throw BTreeCowError.invariantViolation("unsorted keys")
        }
    }
}
