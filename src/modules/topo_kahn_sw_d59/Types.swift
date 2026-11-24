public struct ModuleMetadata: Sendable, Equatable {
    public let slug: String
    public let version: Int
    public init(slug: String = "topo_kahn_sw_d59", version: Int = 1) {
        self.slug = slug
        self.version = version
    }
}
