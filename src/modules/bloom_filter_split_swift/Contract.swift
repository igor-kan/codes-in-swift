import Foundation

public protocol ProbabilisticSetContract: Sendable {
    mutating func insert(_ item: UInt64)
    func mightContain(_ item: UInt64) -> Bool
    mutating func formUnion(_ other: Self) throws
}
