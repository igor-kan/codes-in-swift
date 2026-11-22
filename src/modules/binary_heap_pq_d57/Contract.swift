public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}

public extension TaggedAlgorithm {
    var tag: String { "binary_heap_pq_d57" }
    var moduleVersion: Int { 1 }
}
