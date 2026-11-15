import Foundation

public extension FenwickTree {
    func batchPrefixSums(indices: ContiguousArray<Int>) -> ContiguousArray<Int64> {
        var out = ContiguousArray<Int64>(repeating: 0, count: indices.count)
        tree.withUnsafeBufferPointer { tBuf in
            for i in 0..<indices.count {
                var pos = indices[i] + 1
                var acc: Int64 = 0
                while pos > 0 {
                    acc &+= tBuf[pos]
                    pos -= pos & -pos
                }
                out[i] = acc
            }
        }
        return out
    }
}
