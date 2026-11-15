import Foundation

public enum KmpPropertyTests {
    public static func runBruteDifferential(trials: Int = 40) {
        let matcher = KmpMatcher()
        let alphabet: [UInt8] = [97, 98, 99]
        var rng: UInt64 = 0x123456789ABCDEF
        for _ in 0..<trials {
            var text: [UInt8] = []
            for _ in 0..<60 {
                rng = rng &* 2862933555777941757 &+ 3037000493
                text.append(alphabet[Int(rng % 3)])
            }
            var pat: [UInt8] = []
            for _ in 0..<4 {
                rng = rng &* 2862933555777941757 &+ 3037000493
                pat.append(alphabet[Int(rng % 3)])
            }
            let plan = try! matcher.compile(pattern: pat)
            assert(KmpInvariants.verifyPlan(plan))
            let got = matcher.findAll(in: text, plan: plan)
            var brute: [Int] = []
            for start in 0...(text.count - pat.count) {
                if Array(text[start..<(start + pat.count)]) == pat { brute.append(start) }
            }
            assert(got == brute)
        }
    }
}
