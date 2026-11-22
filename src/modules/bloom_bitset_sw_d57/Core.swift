public struct Bloom256 {
    private var words: [UInt64] = Array(repeating: 0, count: 4)
    private let probes: UInt64 = 4
    public init() {}

    private func pairHashes(_ v: UInt64) -> (UInt64, UInt64) {
        let h1 = (v ^ (v >> 30)) &* 0xBF58476D1CE4E5B9
        let h2 = ((v &* 0x94D049BB133111EB) >> 32) | 1
        return (h1, h2)
    }

    public mutating func insert(_ v: UInt64) {
        let (h1, h2) = pairHashes(v)
        for k in 0..<probes {
            let bit = Int((h1 &+ k &* h2) & 255)
            words[bit >> 6] |= (UInt64(1) << (bit & 63))
        }
    }

    public func mightContain(_ v: UInt64) -> Bool {
        let (h1, h2) = pairHashes(v)
        for k in 0..<probes {
            let bit = Int((h1 &+ k &* h2) & 255)
            if (words[bit >> 6] & (UInt64(1) << (bit & 63))) == 0 { return false }
        }
        return true
    }
}
