public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}

public extension TaggedAlgorithm {
    var tag: String { "run_length_codec_d56" }
    var moduleVersion: Int { 1 }
}
