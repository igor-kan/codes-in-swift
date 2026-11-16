import Foundation

public func runBTreeCowPropertyTests() throws {
    var tr = CowBTree<Int>()
    for i in 0..<120 { tr.insert(key: (i * 37) % 101, value: i) }
    try verifyOrderedInvariants(tr)
    let rk = rangeKeys(tr, lo: 10, hi: 40)
    assert(rk.first! >= 10 && rk.last! <= 40)
}
