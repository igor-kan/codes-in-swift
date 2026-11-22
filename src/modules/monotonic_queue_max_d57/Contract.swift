public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}

public extension TaggedAlgorithm {
    var tag: String { "monotonic_queue_max_d57" }
    var moduleVersion: Int { 1 }
}
