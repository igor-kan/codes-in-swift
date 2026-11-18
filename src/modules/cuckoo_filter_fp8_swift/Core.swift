public final class CuckooFilter {
    private let mask: Int
    private var table: [[UInt8]]
    public init(bucketsPow2: Int) {
        self.mask = bucketsPow2 - 1
        self.table = Array(repeating: [UInt8](repeating: 0, count: 4), count: bucketsPow2)
    }
    private func fpIdx(_ key: UInt64) -> (UInt8, Int, Int) {
        let h = (key ^ (key >> 30)) &* 0xbf58476d1ce4e5b9
        let fp = UInt8((h >> 16) & 0xff) | 1
        let i1 = Int(h) & mask
        let i2 = (i1 ^ (Int(fp) &* 0x5bd1e995)) & mask
        return (fp, i1, i2)
    }
    public func insert(_ key: UInt64) -> Bool {
        let (fp, i1, i2) = fpIdx(key)
        for idx in [i1, i2] {
            for s in 0..<4 where table[idx][s] == 0 { table[idx][s] = fp; return true }
        }
        return false
    }
    public func lookup(_ key: UInt64) -> Bool {
        let (fp, i1, i2) = fpIdx(key)
        return table[i1].contains(fp) || table[i2].contains(fp)
    }
}
