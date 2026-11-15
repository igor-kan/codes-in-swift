import Foundation

public enum FenwickPropertyTests {
    public static func runDifferential(n: Int = 48, ops: Int = 200) {
        var raw = Array(repeating: Int64(1), count: n)
        var ft = try! FenwickTree(initialValues: raw)
        var rng: UInt64 = 0xA5A5A5A5F0F0F0F0
        for _ in 0..<ops {
            rng = rng &* 6364136223846793005 &+ 1
            let idx = Int(rng % UInt64(n))
            let delta = Int64((rng >> 16) % 7) + 1
            raw[idx] += delta
            try! ft.add(delta, at: idx)
            assert(FenwickInvariants.matchesNaive(ft, raw: raw))
        }
    }
}
