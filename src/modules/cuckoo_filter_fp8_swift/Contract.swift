public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}

public extension TaggedAlgorithm {
    var tag: String { "cuckoo_filter_fp8_swift" }
    var moduleVersion: Int { 1 }
}
