import Foundation

public enum SparseMatVecFastPath {
    public static func multiply(matrix: CsrSparseMatrix, vector: [Double]) -> [Double] {
        var out = Array(repeating: 0.0, count: matrix.dimension)
        vector.withUnsafeBufferPointer { vBuf in
            matrix.colIndices.withUnsafeBufferPointer { cBuf in
                matrix.values.withUnsafeBufferPointer { valBuf in
                    for row in 0..<matrix.dimension {
                        var sum = 0.0
                        let start = matrix.rowPointers[row]
                        let end = matrix.rowPointers[row + 1]
                        var idx = start
                        while idx < end {
                            sum += valBuf[idx] * vBuf[cBuf[idx]]
                            idx += 1
                        }
                        out[row] = sum
                    }
                }
            }
        }
        return out
    }
}
