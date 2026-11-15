import Foundation

public protocol DoubleEndedQueueProtocol {
    associatedtype Element: Sendable
    var count: Int { get }
    var isEmpty: Bool { get }
    mutating func pushFront(_ element: Element)
    mutating func pushBack(_ element: Element)
    mutating func popFront() -> Element?
    mutating func popBack() -> Element?
    func peekFront() throws -> Element
    func peekBack() throws -> Element
}
