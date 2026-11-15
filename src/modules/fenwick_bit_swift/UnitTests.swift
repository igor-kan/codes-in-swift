import Foundation

public enum FenwickUnitTests {
    public static func runAll() {
        var ft = try! FenwickTree(initialValues: [3, 2, 1, 6, 5])
        assert(try! ft.prefixSum(through: 4) == 17)
        assert(try! ft.rangeSum(left: 1, right: 3) == 9)
        assert(try! ft.lowerBoundPrefix(6) == 2)
        try! ft.add(4, at: 2)
        assert(try! ft.rangeSum(left: 1, right: 3) == 13)
        assert(FenwickInvariants.matchesNaive(ft, raw: [3, 2, 5, 6, 5]))
    }
}
