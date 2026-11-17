public protocol FreqEstimator {
    mutating func add(_ key: UInt64, _ delta: UInt64)
    func estimate(_ key: UInt64) -> UInt64
}
public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}
public extension TaggedAlgorithm {
    var moduleVersion: Int { 1 }
}
