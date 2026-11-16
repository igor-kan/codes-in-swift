import Foundation

public protocol BytePatternAutomaton: Sendable {
    func matches(in bytes: [UInt8]) -> [AhoMatch]
    func matchCount(in text: String) -> Int
}
