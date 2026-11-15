import Foundation

public enum ParallelFenwickEvaluator {
    public static func evaluateRanges(tree: FenwickTree, ranges: [FenwickRangeQuery]) async throws -> [Int64] {
        return try await withThrowingTaskGroup(of: (Int, Int64).self) { group in
            for (i, r) in ranges.enumerated() {
                group.addTask {
                    return (i, try tree.rangeSum(left: r.left, right: r.right))
                }
            }
            var out = Array(repeating: Int64(0), count: ranges.count)
            for try await (i, s) in group { out[i] = s }
            return out
        }
    }
}
