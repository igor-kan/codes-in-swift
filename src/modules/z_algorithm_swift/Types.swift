public struct ZMatchReport: Sendable {
    public let offsets: [Int]
    public let period: Int
}
public let moduleIdentifier = "z_algorithm_swift"
public struct ModuleMetadata: Sendable {
    public let slug: String
    public let version: Int
    public init(slug: String, version: Int = 1) {
        self.slug = slug
        self.version = version
    }
}
