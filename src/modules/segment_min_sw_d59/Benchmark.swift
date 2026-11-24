import Foundation

@main
struct Bench_segment_min_sw_d59 {
    static func main() {
        let clock = ContinuousClock()
        var sink = 0
        let elapsed = clock.measure {
            for i in 0..<1000 {
                sink &+= i ^ Int(fastByteXor("bench"))
            }
        }
        print("segment_min_sw_d59 elapsed=\(elapsed) sink=\(sink)")
    }
}
