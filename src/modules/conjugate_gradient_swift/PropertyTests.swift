import Foundation

public enum CgPropertyTests {
    public static func runLaplacianChain(n: Int = 20) {
        var rowPtr = [0]
        var cols: [Int] = []
        var vals: [Double] = []
        for i in 0..<n {
            if i > 0 { cols.append(i - 1); vals.append(-1.0) }
            cols.append(i); vals.append(2.5)
            if i + 1 < n { cols.append(i + 1); vals.append(-1.0) }
            rowPtr.append(cols.count)
        }
        let m = CsrSparseMatrix(dimension: n, rowPointers: rowPtr, colIndices: cols, values: vals)
        let xTrue = (0..<n).map { Double($0 + 1) * 0.5 }
        let b = SparseMatVecFastPath.multiply(matrix: m, vector: xTrue)
        let rep = try! PreconditionedCgSolver().solve(matrix: m, rhs: b, tolerance: 1e-10)
        assert(rep.converged)
        for i in 0..<n { assert(abs(rep.solution[i] - xTrue[i]) < 1e-7) }
    }
}
