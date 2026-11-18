public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}

public extension TaggedAlgorithm {
    var tag: String { "vose_alias_table_swift" }
    var moduleVersion: Int { 1 }
}
