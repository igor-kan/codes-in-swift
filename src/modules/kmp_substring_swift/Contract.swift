import Foundation

public protocol SubstringMatcherProtocol {
    func compile(pattern: [UInt8]) throws -> KmpPatternPlan
    func findAll(in text: [UInt8], plan: KmpPatternPlan) -> [Int]
}
