import Foundation

public struct CsrSparseMatrix: Sendable, Equatable {
    public let dimension: Int
    public let rowPointers: [Int]
    public let colIndices: [Int]
    public let values: [Double]

    public init(dimension: Int, rowPointers: [Int], colIndices: [Int], values: [Double]) {
        self.dimension = dimension
        self.rowPointers = rowPointers
        self.colIndices = colIndices
        self.values = values
    }
}

public struct CgSolveReport: Sendable, Equatable {
    public let solution: [Double]
    public let iterations: Int
    public let residualNorm: Double
    public let converged: Bool
}
