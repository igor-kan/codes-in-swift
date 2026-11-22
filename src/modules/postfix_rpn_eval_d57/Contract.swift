public protocol TaggedAlgorithm: Sendable {
    var tag: String { get }
    var moduleVersion: Int { get }
}

public extension TaggedAlgorithm {
    var tag: String { "postfix_rpn_eval_d57" }
    var moduleVersion: Int { 1 }
}
