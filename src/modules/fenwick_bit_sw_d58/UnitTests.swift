@main
struct UnitRunner_fenwick_bit_sw_d58 {
    static func main() throws {
        try requireNonEmpty(1)
        var fw = FenwickBit(count: 6)
        fw.add(1, 5); fw.add(3, 7); fw.add(4, -2)
        precondAssert(fw.rangeSum(1, 4) == 10)
        try verifyInvariant(true, "ok")
        print("fenwick_bit_sw_d58 unit ok")
    }
}
