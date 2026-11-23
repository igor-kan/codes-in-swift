public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}

public extension TaggedAlgorithm {
    var tag: String { "lru_ordered_sw_d58" }
    var moduleVersion: Int { 1 }
}
