public struct ModuleMetadata: Sendable, Equatable {
    public let slug: String
    public let version: Int
    public init(slug: String = "lcp_longest_prefix_d56", version: Int = 1) {
        self.slug = slug
        self.version = version
    }
}
