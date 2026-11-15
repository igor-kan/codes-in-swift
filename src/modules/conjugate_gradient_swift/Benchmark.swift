import Foundation

public enum CgBenchmark {
    public static func measureTridiagonal(n: Int = 1_000) -> Duration {
        let clock = ContinuousClock()
        var rowPtr = [0]
        var cols: [Int] = []
        var vals: [Double] = []
        for i in 0..<n {
            if i > 0 { cols.append(i - 1); vals.append(-1.0) }
            cols.append(i); vals.append(3.0)
            if i + 1 < n { cols.append(i + 1); vals.append(-1.0) }
            rowPtr.append(cols.count)
        }
        let m = CsrSparseMatrix(dimension: n, rowPointers: rowPtr, colIndices: cols, values: vals)
        let rhs = Array(repeating: 1.0, count: n)
        let solver = PreconditionedCgSolver()
        return clock.measure {
            let rep = try! solver.solve(matrix: m, rhs: rhs)
            precondition(rep.converged)
        }
    }
}
