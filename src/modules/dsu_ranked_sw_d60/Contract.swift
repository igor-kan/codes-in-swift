public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}

public extension TaggedAlgorithm {
    var tag: String { "dsu_ranked_sw_d60" }
    var moduleVersion: Int { 1 }
}
