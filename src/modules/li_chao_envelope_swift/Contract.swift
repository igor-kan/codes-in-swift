public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}

public extension TaggedAlgorithm {
    var tag: String { "li_chao_envelope_swift" }
    var moduleVersion: Int { 1 }
}
