public struct ModuleMetadata: Sendable, Equatable {
    public let slug: String
    public let version: Int
    public init(slug: String = "lru_ordered_sw_d58", version: Int = 1) {
        self.slug = slug
        self.version = version
    }
}
