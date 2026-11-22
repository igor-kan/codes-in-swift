import Foundation

@main
struct Bench_postfix_rpn_eval_d57 {
    static func main() {
        let clock = ContinuousClock()
        var sink = 0
        let elapsed = clock.measure {
            for i in 0..<1000 {
                sink &+= i ^ Int(fastByteXor("bench"))
            }
        }
        print("postfix_rpn_eval_d57 elapsed=\(elapsed) sink=\(sink)")
    }
}
