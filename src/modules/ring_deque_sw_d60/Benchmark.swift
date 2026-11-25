import Foundation

@main
struct Bench_ring_deque_sw_d60 {
    static func main() {
        let clock = ContinuousClock()
        var sink = 0
        let elapsed = clock.measure {
            for i in 0..<1000 {
                sink &+= i ^ Int(fastByteXor("bench"))
            }
        }
        print("ring_deque_sw_d60 elapsed=\(elapsed) sink=\(sink)")
    }
}
