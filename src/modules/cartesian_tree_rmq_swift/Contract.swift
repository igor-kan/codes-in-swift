public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}

public extension TaggedAlgorithm {
    var tag: String { "cartesian_tree_rmq_swift" }
    var moduleVersion: Int { 1 }
}
