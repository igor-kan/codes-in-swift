import Foundation

@main
struct Bench_monotonic_queue_max_d57 {
    static func main() {
        let clock = ContinuousClock()
        var sink = 0
        let elapsed = clock.measure {
            for i in 0..<1000 {
                sink &+= i ^ Int(fastByteXor("bench"))
            }
        }
        print("monotonic_queue_max_d57 elapsed=\(elapsed) sink=\(sink)")
    }
}
