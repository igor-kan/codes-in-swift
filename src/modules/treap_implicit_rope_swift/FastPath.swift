import Foundation

public func totalSequenceSum(_ seq: ImplicitTreapSequence) -> Int {
    let vals = seq.toArray()
    var sum = 0
    for v in vals { sum += v }
    return sum
}
