public protocol FrequencyCache {
    mutating func get(_ key: Int) -> Int?
    mutating func put(_ key: Int, _ val: Int)
}
public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}
public extension TaggedAlgorithm {
    var moduleVersion: Int { 1 }
}
