public struct ModuleMetadata: Sendable, Equatable {
    public let slug: String
    public let version: Int
    public init(slug: String = "rabin_karp_sw_d59", version: Int = 1) {
        self.slug = slug
        self.version = version
    }
}
