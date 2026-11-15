import Foundation

public protocol SparseSpdSolverProtocol {
    func solve(
        matrix: CsrSparseMatrix,
        rhs: [Double],
        tolerance: Double,
        maxIterations: Int
    ) throws -> CgSolveReport
}
