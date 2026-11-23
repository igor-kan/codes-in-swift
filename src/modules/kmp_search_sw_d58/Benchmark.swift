import Foundation

@main
struct Bench_kmp_search_sw_d58 {
    static func main() {
        let clock = ContinuousClock()
        var sink = 0
        let elapsed = clock.measure {
            for i in 0..<1000 {
                sink &+= i ^ Int(fastByteXor("bench"))
            }
        }
        print("kmp_search_sw_d58 elapsed=\(elapsed) sink=\(sink)")
    }
}
