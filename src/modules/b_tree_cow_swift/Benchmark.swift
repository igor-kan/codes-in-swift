import Foundation

public func benchmarkBTreeCowSwift() -> Int {
    var sink = 0
    for _it in 0..<100 {
        var t = CowBTree<Int>(); for k in 0..<64 { t.insert(key: k, value: k) }; sink += (t[32] ?? 0)
    }
    return sink
}
