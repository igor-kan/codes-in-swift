import Foundation

public protocol BoundedCacheProtocol {
    associatedtype Key: Hashable & Sendable
    associatedtype Value: Sendable
    var capacity: Int { get }
    var count: Int { get }
    mutating func get(_ key: Key) -> Value?
    mutating func put(_ key: Key, value: Value)
}
