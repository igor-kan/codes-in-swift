public protocol RollbackConnectivity {
    func find(_ x: Int) -> Int
    mutating func unite(_ a: Int, _ b: Int) -> Bool
    mutating func rollback(to mark: Int)
}
public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}
public extension TaggedAlgorithm {
    var moduleVersion: Int { 1 }
}
