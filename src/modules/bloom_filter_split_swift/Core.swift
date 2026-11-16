import Foundation

public struct SplitMixBloomFilter: ProbabilisticSetContract, Sendable {
    public let spec: BloomSpec
    public private(set) var words: [UInt64]
    public private(set) var insertedCount: Int = 0

    public init(spec: BloomSpec) {
        self.spec = spec
        self.words = Array(repeating: 0, count: spec.bitCount / 64)
    }

    @inline(__always)
    private static func splitMix(_ x: UInt64) -> UInt64 {
        var z = x &+ 0x9e3779b97f4a7c15
        z = (z ^ (z >> 30)) &* 0xbf58476d1ce4e5b9
        z = (z ^ (z >> 27)) &* 0x94d049bb133111eb
        return z ^ (z >> 31)
    }

    private func pairHashes(_ item: UInt64) -> (UInt64, UInt64) {
        let h1 = Self.splitMix(item ^ spec.seed)
        let h2 = Self.splitMix(h1 ^ 0x517cc1b727220a95) | 1
        return (h1, h2)
    }

    public mutating func insert(_ item: UInt64) {
        let (h1, h2) = pairHashes(item)
        let m = UInt64(spec.bitCount)
        for i in 0..<spec.hashCount {
            let bit = Int((h1 &+ UInt64(i) &* h2) % m)
            words[bit >> 6] |= (UInt64(1) << (bit & 63))
        }
        insertedCount += 1
    }

    public func mightContain(_ item: UInt64) -> Bool {
        let (h1, h2) = pairHashes(item)
        let m = UInt64(spec.bitCount)
        for i in 0..<spec.hashCount {
            let bit = Int((h1 &+ UInt64(i) &* h2) % m)
            if (words[bit >> 6] & (UInt64(1) << (bit & 63))) == 0 {
                return false
            }
        }
        return true
    }

    public mutating func formUnion(_ other: SplitMixBloomFilter) throws {
        guard spec == other.spec else { throw BloomSwiftError.incompatibleUnion }
        for i in words.indices { words[i] |= other.words[i] }
        insertedCount += other.insertedCount
    }
}
