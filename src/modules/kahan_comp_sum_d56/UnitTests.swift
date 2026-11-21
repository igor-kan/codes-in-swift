@main
struct UnitRunner_kahan_comp_sum_d56 {
    static func main() throws {
        try requireNonEmpty(1)
        let s = neumaierSum([1.0e12, 1.0, -1.0e12, 2.5])
        precondAssert(abs(s - 3.5) < 1.0e-9)
        try verifyInvariant(true, "ok")
        print("kahan_comp_sum_d56 unit ok")
    }
}
