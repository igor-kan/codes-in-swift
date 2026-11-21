public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}

public extension TaggedAlgorithm {
    var tag: String { "sorted_bsearch_range_d56" }
    var moduleVersion: Int { 1 }
}
