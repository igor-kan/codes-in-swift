public struct CacheItem: Sendable {
    public var value: Int
    public var freq: Int
}
public let moduleIdentifier = "lfu_cache_buckets_swift"
public struct ModuleMetadata: Sendable {
    public let slug: String
    public let version: Int
    public init(slug: String, version: Int = 1) {
        self.slug = slug
        self.version = version
    }
}
