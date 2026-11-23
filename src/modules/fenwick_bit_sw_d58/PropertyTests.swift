@main
struct PropRunner_fenwick_bit_sw_d58 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        var fw = FenwickBit(count: 4)
        for i in 0..<4 { fw.add(i, i + 1) }
        precondAssert(fw.rangeSum(0, 3) == 10)
        print("fenwick_bit_sw_d58 prop ok")
    }
}
