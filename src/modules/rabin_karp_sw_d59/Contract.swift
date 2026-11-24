public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}

public extension TaggedAlgorithm {
    var tag: String { "rabin_karp_sw_d59" }
    var moduleVersion: Int { 1 }
}
