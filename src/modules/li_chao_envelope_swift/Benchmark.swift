import Foundation

@main
struct Bench_li_chao_envelope_swift {
    static func main() {
        let clock = ContinuousClock()
        var sink = 0
        let elapsed = clock.measure {
            for i in 0..<1000 {
                sink &+= i ^ Int(fastByteXor("bench"))
            }
        }
        print("li_chao_envelope_swift elapsed=\(elapsed) sink=\(sink)")
    }
}
