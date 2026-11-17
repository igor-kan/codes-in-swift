import Foundation

@main
struct Bench_lfu_cache_buckets_swift {
    static func main() {
        let clock = ContinuousClock()
        var sink = 0
        let elapsed = clock.measure {
            for i in 0..<1000 { sink &+= i ^ Int(fastByteXor("bench")) }
        }
        print("lfu_cache_buckets_swift elapsed=\(elapsed) sink=\(sink)")
    }
}
