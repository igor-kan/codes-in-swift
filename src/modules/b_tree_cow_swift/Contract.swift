import Foundation

public protocol OrderedCowDictProtocol {
    associatedtype Value: Sendable
    var count: Int { get }
    subscript(key: Int) -> Value? { get set }
    func sortedPairs() -> [(Int, Value)]
}
