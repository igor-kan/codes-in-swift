import Foundation

public struct TreapSlot: Sendable {
    public var value: Int
    public var subtreeSum: Int
    public var prio: UInt64
    public var size: Int
    public var rev: Bool
    public var left: Int
    public var right: Int
}
