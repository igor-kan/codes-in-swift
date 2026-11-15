import Foundation

public protocol PrefixMapProtocol {
    associatedtype Value: Sendable
    var count: Int { get }
    mutating func insert(key: String, value: Value) throws
    func search(key: String) -> Value?
    func keysWithPrefix(_ prefix: String) -> [String]
}
