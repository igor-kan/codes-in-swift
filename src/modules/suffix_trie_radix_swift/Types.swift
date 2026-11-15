import Foundation

public struct RadixNode<Value: Sendable>: Sendable {
    public var value: Value?
    public var children: [UInt8: RadixEdge<Value>] = [:]
}

public struct RadixEdge<Value: Sendable>: Sendable {
    public var label: [UInt8]
    public var target: RadixNode<Value>
}
