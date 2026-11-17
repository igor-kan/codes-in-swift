import Foundation

@main
struct Bench_union_find_rollback_swift {
    static func main() {
        let clock = ContinuousClock()
        var sink = 0
        let elapsed = clock.measure {
            for i in 0..<1000 { sink &+= i ^ Int(fastByteXor("bench")) }
        }
        print("union_find_rollback_swift elapsed=\(elapsed) sink=\(sink)")
    }
}
