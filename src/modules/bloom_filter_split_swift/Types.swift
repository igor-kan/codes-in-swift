import Foundation

public struct BloomSpec: Sendable, Equatable {
    public let bitCount: Int
    public let hashCount: Int
    public let seed: UInt64

    public init(expectedCount: Int, falsePositiveRate: Double = 0.01, seed: UInt64 = 0xCAFEBABE) {
        let n = Double(max(16, expectedCount))
        let p = max(1e-7, min(0.5, falsePositiveRate))
        let rawBits = Int(ceil(-n * log(p) / (log(2.0) * log(2.0))))
        self.bitCount = max(64, ((rawBits + 63) / 64) * 64)
        self.hashCount = max(1, Int(round((Double(self.bitCount) / n) * log(2.0))))
        self.seed = seed
    }
}
