import Foundation

public enum CgValidator {
    public static func validate(matrix: CsrSparseMatrix, rhs: [Double]) throws {
        if matrix.dimension <= 0 || matrix.rowPointers.count != matrix.dimension + 1 {
            throw CgSolverError.malformedCsrStructure
        }
        if matrix.colIndices.count != matrix.values.count {
            throw CgSolverError.malformedCsrStructure
        }
        if rhs.count != matrix.dimension {
            throw CgSolverError.dimensionMismatch(expected: matrix.dimension, actual: rhs.count)
        }
    }
}
