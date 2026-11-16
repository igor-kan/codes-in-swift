import Foundation

public func verifyReversalOracle(n: Int, ops: [(Int, Int)]) throws {
    var seq = ImplicitTreapSequence()
    var arr = [Int]()
    for i in 0..<n { seq.append(i); arr.append(i) }
    for (lo, hi) in ops {
        try seq.reverseRange(lo: lo, hi: hi)
        arr[lo...hi].reverse()
    }
    if seq.toArray() != arr {
        throw ImplicitTreapError.invariantViolation("implicit treap reversal drifted from Array oracle")
    }
}
