public protocol PalinAnalyzer: Sendable {
    func analyze(_ s: String) throws -> PalinMetrics
}
public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}
public extension TaggedAlgorithm {
    var moduleVersion: Int { 1 }
}
