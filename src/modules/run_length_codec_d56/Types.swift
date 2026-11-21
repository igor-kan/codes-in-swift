public struct ModuleMetadata: Sendable, Equatable {
    public let slug: String
    public let version: Int
    public init(slug: String = "run_length_codec_d56", version: Int = 1) {
        self.slug = slug
        self.version = version
    }
}
