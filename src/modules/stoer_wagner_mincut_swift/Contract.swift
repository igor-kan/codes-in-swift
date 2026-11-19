public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}

public extension TaggedAlgorithm {
    var tag: String { "stoer_wagner_mincut_swift" }
    var moduleVersion: Int { 1 }
}
