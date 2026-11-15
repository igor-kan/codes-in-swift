import Foundation

public enum CgInvariants {
    public static func verifyResidual(matrix: CsrSparseMatrix, rhs: [Double], report: CgSolveReport) -> Bool {
        let ax = SparseMatVecFastPath.multiply(matrix: matrix, vector: report.solution)
        var normSq = 0.0
        for i in 0..<rhs.count {
            let diff = ax[i] - rhs[i]
            normSq += diff * diff
        }
        return abs(sqrt(normSq) - report.residualNorm) < 1e-7
    }
}
