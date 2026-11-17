public struct SegBounds: Sendable {
    public let lo: Int
    public let hi: Int
}
public let moduleIdentifier = "segment_tree_lazy_swift"
public struct ModuleMetadata: Sendable {
    public let slug: String
    public let version: Int
    public init(slug: String, version: Int = 1) {
        self.slug = slug
        self.version = version
    }
}
