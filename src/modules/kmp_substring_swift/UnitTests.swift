import Foundation

public enum KmpUnitTests {
    public static func runAll() {
        let matcher = KmpMatcher()
        let plan = try! matcher.compile(pattern: Array("ababa".utf8))
        assert(plan.lps == [0, 0, 1, 2, 3])
        assert(KmpInvariants.verifyPlan(plan))
        let matches = matcher.findAll(in: Array("ababa_ababa".utf8), plan: plan)
        assert(matches == [0, 6])
        let overlap = matcher.findAll(in: Array("ababababa".utf8), plan: plan)
        assert(overlap == [0, 2, 4])
    }
}
