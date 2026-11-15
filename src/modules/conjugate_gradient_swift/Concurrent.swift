import Foundation

public enum ParallelCgBatch {
    public static func solveRhsBatch(matrix: CsrSparseMatrix, rhsList: [[Double]]) async throws -> [CgSolveReport] {
        let solver = PreconditionedCgSolver()
        return try await withThrowingTaskGroup(of: (Int, CgSolveReport).self) { group in
            for (idx, rhs) in rhsList.enumerated() {
                group.addTask {
                    return (idx, try solver.solve(matrix: matrix, rhs: rhs))
                }
            }
            var results: [CgSolveReport?] = Array(repeating: nil, count: rhsList.count)
            for try await (idx, rep) in group { results[idx] = rep }
            return results.compactMap { $0 }
        }
    }
}
