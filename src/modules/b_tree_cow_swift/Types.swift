import Foundation

public struct BTreeStats: Sendable, Equatable {
    public var count: Int
    public var height: Int
    public var cowClones: Int

    public init(count: Int = 0, height: Int = 1, cowClones: Int = 0) {
        self.count = count
        self.height = height
        self.cowClones = cowClones
    }
}
