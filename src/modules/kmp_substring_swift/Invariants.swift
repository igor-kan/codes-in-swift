import Foundation

public enum KmpInvariants {
    public static func verifyPlan(_ plan: KmpPatternPlan) -> Bool {
        guard plan.lps.count == plan.pattern.count else { return false }
        for i in 0..<plan.lps.count {
            let k = plan.lps[i]
            if k < 0 || k > i { return false }
            if k > 0 && Array(plan.pattern[0..<k]) != Array(plan.pattern[(i + 1 - k)...i]) {
                return false
            }
        }
        return true
    }
}
