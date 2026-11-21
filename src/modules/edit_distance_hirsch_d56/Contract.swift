public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}

public extension TaggedAlgorithm {
    var tag: String { "edit_distance_hirsch_d56" }
    var moduleVersion: Int { 1 }
}
