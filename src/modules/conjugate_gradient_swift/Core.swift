import Foundation

public struct PreconditionedCgSolver: SparseSpdSolverProtocol, Sendable {
    public init() {}

    public func solve(
        matrix: CsrSparseMatrix,
        rhs: [Double],
        tolerance: Double = 1e-10,
        maxIterations: Int = 500
    ) throws -> CgSolveReport {
        try CgValidator.validate(matrix: matrix, rhs: rhs)
        let n = matrix.dimension
        let invDiag = try extractInverseDiagonal(matrix)
        var x = Array(repeating: 0.0, count: n)
        var r = rhs
        var z = Array(repeating: 0.0, count: n)
        for i in 0..<n { z[i] = r[i] * invDiag[i] }
        var p = z
        var rzOld = dot(r, z)
        var iters = 0
        var resNorm = sqrt(dot(r, r))
        while resNorm > tolerance && iters < maxIterations {
            let ap = SparseMatVecFastPath.multiply(matrix: matrix, vector: p)
            let pAp = dot(p, ap)
            if pAp <= 1e-30 { break }
            let alpha = rzOld / pAp
            for i in 0..<n {
                x[i] += alpha * p[i]
                r[i] -= alpha * ap[i]
            }
            resNorm = sqrt(dot(r, r))
            iters += 1
            if resNorm <= tolerance {
                return CgSolveReport(solution: x, iterations: iters, residualNorm: resNorm, converged: true)
            }
            for i in 0..<n { z[i] = r[i] * invDiag[i] }
            let rzNew = dot(r, z)
            let beta = rzNew / rzOld
            for i in 0..<n { p[i] = z[i] + beta * p[i] }
            rzOld = rzNew
        }
        return CgSolveReport(solution: x, iterations: iters, residualNorm: resNorm, converged: resNorm <= tolerance)
    }

    private func extractInverseDiagonal(_ m: CsrSparseMatrix) throws -> [Double] {
        var diag = Array(repeating: 0.0, count: m.dimension)
        for row in 0..<m.dimension {
            for idx in m.rowPointers[row]..<m.rowPointers[row + 1] where m.colIndices[idx] == row {
                diag[row] = m.values[idx]
            }
            if diag[row] <= 0.0 {
                throw CgSolverError.nonPositiveDiagonal(row: row, value: diag[row])
            }
            diag[row] = 1.0 / diag[row]
        }
        return diag
    }

    private func dot(_ a: [Double], _ b: [Double]) -> Double {
        var s = 0.0
        for i in 0..<a.count { s += a[i] * b[i] }
        return s
    }
}
