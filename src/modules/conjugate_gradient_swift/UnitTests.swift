import Foundation

public enum CgUnitTests {
    public static func runAll() {
        let matrix = CsrSparseMatrix(
            dimension: 3,
            rowPointers: [0, 2, 5, 7],
            colIndices: [0, 1, 0, 1, 2, 1, 2],
            values: [4.0, -1.0, -1.0, 4.0, -1.0, -1.0, 4.0]
        )
        let rhs = [1.0, 2.0, 3.0]
        let rep = try! PreconditionedCgSolver().solve(matrix: matrix, rhs: rhs, tolerance: 1e-12)
        assert(rep.converged)
        assert(CgInvariants.verifyResidual(matrix: matrix, rhs: rhs, report: rep))
    }
}
