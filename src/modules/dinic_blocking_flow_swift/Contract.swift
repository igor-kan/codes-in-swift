public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}

public extension TaggedAlgorithm {
    var tag: String { "dinic_blocking_flow_swift" }
    var moduleVersion: Int { 1 }
}
