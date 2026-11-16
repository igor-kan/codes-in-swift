import Foundation

public func benchmarkBloomFilterSplitSwift() -> Int {
    var sink = 0
    for _it in 0..<100 {
        var bf = SplitMixBloomFilter(spec: BloomSpec(expectedCount: 1024)); for k in 0..<128 { bf.insert(UInt64(k)) }; sink += batchFilterCheck(bf, Array(0..<64))
    }
    return sink
}
