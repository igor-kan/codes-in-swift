import Foundation

public func batchFilterCheck(_ bf: SplitMixBloomFilter, probes: [UInt64]) -> Int {
    var hits = 0
    for k in probes where bf.mightContain(k) {
        hits += 1
    }
    return hits
}
