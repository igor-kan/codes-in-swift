public struct ModuleMetadata: Sendable, Equatable {
    public let slug: String
    public let version: Int
    public init(slug: String = "treap_rng_sw_d59", version: Int = 1) {
        self.slug = slug
        self.version = version
    }
}
