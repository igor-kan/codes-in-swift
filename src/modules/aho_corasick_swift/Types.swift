import Foundation

public struct AhoMatch: Sendable, Equatable, Hashable {
    public let offset: Int
    public let patternIndex: Int

    public init(offset: Int, patternIndex: Int) {
        self.offset = offset
        self.patternIndex = patternIndex
    }
}

public struct AhoNode: Sendable {
    public var next: [Int] = Array(repeating: 0, count: 256)
    public var fail: Int = 0
    public var outputs: [Int] = []
}
