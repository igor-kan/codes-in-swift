import Foundation

public func runBTreeCowUnitTests() throws {
    var tr = CowBTree<String>()
    for k in [50, 10, 40, 20, 30, 60, 70, 80, 90, 5] {
        tr.insert(key: k, value: "v_\(k)")
    }
    try verifyOrderedInvariants(tr)
    assert(tr[30] == "v_30")
    assert(verifyParallelSnapshots())
}
