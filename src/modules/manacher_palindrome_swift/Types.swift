public struct PalinMetrics: Sendable {
    public let start: Int
    public let length: Int
    public let total: Int
}
public let moduleIdentifier = "manacher_palindrome_swift"
public struct ModuleMetadata: Sendable {
    public let slug: String
    public let version: Int
    public init(slug: String, version: Int = 1) {
        self.slug = slug
        self.version = version
    }
}
