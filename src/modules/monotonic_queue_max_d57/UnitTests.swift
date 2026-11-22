@main
struct UnitRunner_monotonic_queue_max_d57 {
    static func main() throws {
        try requireNonEmpty(1)
        let res = maxSlidingWindow([1, 3, -1, -3, 5, 3, 6, 7], 3)
        precondAssert(res == [3, 3, 5, 5, 6, 7])
        try verifyInvariant(true, "ok")
        print("monotonic_queue_max_d57 unit ok")
    }
}
