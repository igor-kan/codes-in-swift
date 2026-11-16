import Foundation

public func verifyZeroFalseNegatives(_ bf: SplitMixBloomFilter, items: [UInt64]) throws {
    for k in items {
        if !bf.mightContain(k) {
            throw BloomSwiftError.invariantViolation("false negative at \(k)")
        }
    }
}
