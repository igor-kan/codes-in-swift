import Foundation

public protocol FenwickTreeProtocol {
    var count: Int { get }
    mutating func add(_ delta: Int64, at index: Int) throws
    func prefixSum(through index: Int) throws -> Int64
    func rangeSum(left: Int, right: Int) throws -> Int64
}
