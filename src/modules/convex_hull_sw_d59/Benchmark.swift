import Foundation

@main
struct Bench_convex_hull_sw_d59 {
    static func main() {
        let clock = ContinuousClock()
        var sink = 0
        let elapsed = clock.measure {
            for i in 0..<1000 {
                sink &+= i ^ Int(fastByteXor("bench"))
            }
        }
        print("convex_hull_sw_d59 elapsed=\(elapsed) sink=\(sink)")
    }
}
