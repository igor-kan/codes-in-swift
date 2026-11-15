import Foundation

public struct LruSlabSlot<Key: Hashable & Sendable, Value: Sendable>: Sendable {
    public var key: Key
    public var value: Value
    public var prev: Int
    public var next: Int
    public var occupied: Bool
}

public struct LruTelemetry: Sendable, Equatable {
    public var hits: Int = 0
    public var misses: Int = 0
    public var evictions: Int = 0
}
