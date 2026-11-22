@main
struct PropRunner_monotonic_queue_max_d57 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        let xs = [4, 2, 9, 1, 5]
        let got = maxSlidingWindow(xs, 2)
        precondAssert(got == [4, 9, 9, 5])
        print("monotonic_queue_max_d57 prop ok")
    }
}
