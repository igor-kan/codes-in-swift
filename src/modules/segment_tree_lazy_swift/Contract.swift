public protocol RangeAccumulator {
    mutating func add(_ l: Int, _ r: Int, _ delta: Int64)
    mutating func sum(_ l: Int, _ r: Int) -> Int64
}
public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}
public extension TaggedAlgorithm {
    var moduleVersion: Int { 1 }
}
