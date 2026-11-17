public protocol SuffixIndexBuilder: Sendable {
    func build(_ s: String) throws -> SuffixTable
}
public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}
public extension TaggedAlgorithm {
    var moduleVersion: Int { 1 }
}
