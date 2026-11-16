import Foundation

public func parallelRadixCheck(_ chunks: [[UInt64]]) -> [[UInt64]] {
    var out = [[UInt64]]()
    out.reserveCapacity(chunks.count)
    for ch in chunks {
        out.append(radixSortedCopy(ch))
    }
    return out
}
