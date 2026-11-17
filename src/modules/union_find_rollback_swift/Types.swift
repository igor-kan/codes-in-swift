public struct DsuUndo: Sendable {
    public let child: Int
    public let oldSize: Int
}
public let moduleIdentifier = "union_find_rollback_swift"
public struct ModuleMetadata: Sendable {
    public let slug: String
    public let version: Int
    public init(slug: String, version: Int = 1) {
        self.slug = slug
        self.version = version
    }
}
