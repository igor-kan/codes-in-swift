@main
struct PropRunner_kahan_comp_sum_d56 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        let s = neumaierSum([0.1, 0.2, 0.3, 0.4])
        precondAssert(abs(s - 1.0) < 1.0e-12)
        print("kahan_comp_sum_d56 prop ok")
    }
}
