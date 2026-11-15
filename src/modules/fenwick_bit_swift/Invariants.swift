import Foundation

public enum FenwickInvariants {
    public static func matchesNaive(_ ft: FenwickTree, raw: [Int64]) -> Bool {
        guard ft.count == raw.count else { return false }
        var running: Int64 = 0
        for i in 0..<raw.count {
            running += raw[i]
            guard let got = try? ft.prefixSum(through: i), got == running else { return false }
        }
        return ft.tree[0] == 0
    }
}
