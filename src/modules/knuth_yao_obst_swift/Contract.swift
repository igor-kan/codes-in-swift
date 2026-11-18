public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}

public extension TaggedAlgorithm {
    var tag: String { "knuth_yao_obst_swift" }
    var moduleVersion: Int { 1 }
}
