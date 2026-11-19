public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}

public extension TaggedAlgorithm {
    var tag: String { "kmp_pattern_scan_swift" }
    var moduleVersion: Int { 1 }
}
