public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}

public extension TaggedAlgorithm {
    var tag: String { "hopcroft_karp_bip_swift" }
    var moduleVersion: Int { 1 }
}
