import Foundation

public func runBloomSwiftTests() throws {
    var bf = SplitMixBloomFilter(spec: BloomSpec(expectedCount: 256, falsePositiveRate: 0.01))
    let items = (0..<200).map { UInt64($0 * 31 + 7) }
    for x in items { bf.insert(x) }
    try verifyZeroFalseNegatives(bf, items: items)
    assert(fillRatio(bf) > 0.0)
}
