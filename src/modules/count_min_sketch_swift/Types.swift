public struct CmsDim: Sendable {
    public let depth: Int
    public let width: Int
}
public let moduleIdentifier = "count_min_sketch_swift"
public struct ModuleMetadata: Sendable {
    public let slug: String
    public let version: Int
    public init(slug: String, version: Int = 1) {
        self.slug = slug
        self.version = version
    }
}
