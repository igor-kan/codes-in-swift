import Foundation

public actor ActorLruCache<Key: Hashable & Sendable, Value: Sendable> {
    private var inner: IntrusiveLruCache<Key, Value>

    public init(capacity: Int) throws {
        self.inner = try IntrusiveLruCache<Key, Value>(capacity: capacity)
    }

    public func fetch(_ key: Key) -> Value? { inner.get(key) }
    public func store(_ key: Key, value: Value) { inner.put(key, value: value) }
    public func stats() -> LruTelemetry { inner.telemetry }
}
