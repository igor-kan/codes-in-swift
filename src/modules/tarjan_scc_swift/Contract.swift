public protocol DigraphDecomposer: Sendable {
    func decompose(n: Int, edges: [(Int, Int)]) -> SccSummary
}
public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}
public extension TaggedAlgorithm {
    var moduleVersion: Int { 1 }
}
