import Foundation

public protocol DisjointSetProtocol {
    var nodeCount: Int { get }
    var componentCount: Int { get }
    func findRoot(_ x: Int) throws -> Int
    mutating func unite(_ a: Int, _ b: Int) throws -> Bool
    func checkpoint() -> Int
    mutating func rollback(to target: Int) throws
}
