import Foundation

@main
struct Bench_lcp_longest_prefix_d56 {
    static func main() {
        let clock = ContinuousClock()
        var sink = 0
        let elapsed = clock.measure {
            for i in 0..<1000 {
                sink &+= i ^ Int(fastByteXor("bench"))
            }
        }
        print("lcp_longest_prefix_d56 elapsed=\(elapsed) sink=\(sink)")
    }
}
