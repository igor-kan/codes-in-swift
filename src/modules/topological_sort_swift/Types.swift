import Foundation

public struct DirectedEdge: Sendable, Equatable {
    public let from: Int
    public let to: Int

    public init(from: Int, to: Int) {
        self.from = from
        self.to = to
    }
}

public struct TopologicalSchedule: Sendable, Equatable {
    public let order: [Int]
    public let waves: [[Int]]
}
