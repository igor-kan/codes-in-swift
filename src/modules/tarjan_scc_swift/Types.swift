public struct SccSummary: Sendable {
    public let componentOf: [Int]
    public let count: Int
}
public let moduleIdentifier = "tarjan_scc_swift"
public struct ModuleMetadata: Sendable {
    public let slug: String
    public let version: Int
    public init(slug: String, version: Int = 1) {
        self.slug = slug
        self.version = version
    }
}
