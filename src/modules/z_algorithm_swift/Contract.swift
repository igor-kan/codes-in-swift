public protocol ZPatternMatcher: Sendable {
    func findAll(text: String, pattern: String) -> [Int]
}
public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}
public extension TaggedAlgorithm {
    var moduleVersion: Int { 1 }
}
