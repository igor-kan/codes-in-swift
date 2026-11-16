import Foundation

public func verifyParallelSnapshots() -> Bool {
    var base = CowBTree<Int>()
    for i in 0..<32 { base.insert(key: i, value: i * 10) }
    let copySnapshot = base
    base.insert(key: 999, value: 9990)
    return copySnapshot[999] == nil && base[999] == 9990
}
