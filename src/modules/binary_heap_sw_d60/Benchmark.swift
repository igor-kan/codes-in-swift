import Foundation

@main
struct Bench_binary_heap_sw_d60 {
    static func main() {
        let clock = ContinuousClock()
        var sink = 0
        let elapsed = clock.measure {
            for i in 0..<1000 {
                sink &+= i ^ Int(fastByteXor("bench"))
            }
        }
        print("binary_heap_sw_d60 elapsed=\(elapsed) sink=\(sink)")
    }
}
