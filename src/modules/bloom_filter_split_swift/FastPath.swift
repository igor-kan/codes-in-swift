import Foundation

public func fillRatio(_ bf: SplitMixBloomFilter) -> Double {
    let setBits = bf.words.reduce(0) { $0 + $1.nonzeroBitCount }
    return Double(setBits) / Double(max(1, bf.spec.bitCount))
}
