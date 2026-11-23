public struct ModuleMetadata: Sendable, Equatable {
    public let slug: String
    public let version: Int
    public init(slug: String = "dsu_merge_sw_d58", version: Int = 1) {
        self.slug = slug
        self.version = version
    }
}
