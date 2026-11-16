import Foundation

public func verifyValueCopyReversalIsolation() throws -> Bool {
    var seq = ImplicitTreapSequence()
    for i in 1...8 { seq.append(i) }
    let snapshot = seq
    try seq.reverseRange(lo: 1, hi: 5)
    return snapshot.toArray() == Array(1...8) && seq.toArray() != snapshot.toArray()
}
