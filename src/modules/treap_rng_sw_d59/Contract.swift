public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}

public extension TaggedAlgorithm {
    var tag: String { "treap_rng_sw_d59" }
    var moduleVersion: Int { 1 }
}
