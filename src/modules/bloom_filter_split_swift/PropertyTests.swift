import Foundation

public func runBloomSwiftPropTests() throws {
    let spec = BloomSpec(expectedCount: 500, falsePositiveRate: 0.01, seed: 77)
    var b1 = SplitMixBloomFilter(spec: spec)
    var b2 = SplitMixBloomFilter(spec: spec)
    for i in 0..<150 { b1.insert(UInt64(i)) }
    for i in 150..<300 { b2.insert(UInt64(i)) }
    try b1.formUnion(b2)
    try verifyZeroFalseNegatives(b1, items: (0..<300).map { UInt64($0) })
}
