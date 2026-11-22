public struct ModuleMetadata: Sendable, Equatable {
    public let slug: String
    public let version: Int
    public init(slug: String = "interval_merge_sw_d57", version: Int = 1) {
        self.slug = slug
        self.version = version
    }
}
