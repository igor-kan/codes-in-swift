public struct ModuleMetadata: Sendable, Equatable {
    public let slug: String
    public let version: Int
    public init(slug: String = "cuckoo_filter_fp8_swift", version: Int = 1) {
        self.slug = slug
        self.version = version
    }
}
