import Foundation

public protocol ReversibleSequenceContract: Sendable {
    var count: Int { get }
    mutating func append(_ val: Int)
    mutating func reverseRange(lo: Int, hi: Int) throws
    func toArray() -> [Int]
}
