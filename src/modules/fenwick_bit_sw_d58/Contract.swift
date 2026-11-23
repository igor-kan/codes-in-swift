public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}

public extension TaggedAlgorithm {
    var tag: String { "fenwick_bit_sw_d58" }
    var moduleVersion: Int { 1 }
}
