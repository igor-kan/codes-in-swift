public struct ModuleMetadata: Sendable, Equatable {
    public let slug: String
    public let version: Int
    public init(slug: String = "li_chao_envelope_swift", version: Int = 1) {
        self.slug = slug
        self.version = version
    }
}
