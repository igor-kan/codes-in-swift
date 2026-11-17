public struct SuffixTable: Sendable {
    public let sa: [Int]
    public let lcp: [Int]
}
public let moduleIdentifier = "suffix_array_kasai_swift"
public struct ModuleMetadata: Sendable {
    public let slug: String
    public let version: Int
    public init(slug: String, version: Int = 1) {
        self.slug = slug
        self.version = version
    }
}
