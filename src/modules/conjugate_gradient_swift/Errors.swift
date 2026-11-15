import Foundation

public enum CgSolverError: Error, Sendable, Equatable {
    case dimensionMismatch(expected: Int, actual: Int)
    case malformedCsrStructure
    case nonPositiveDiagonal(row: Int, value: Double)
}
