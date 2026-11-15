import Foundation

public enum KmpUnsafeScanner {
    public static func countMatches(text: ContiguousArray<UInt8>, plan: KmpPatternPlan) -> Int {
        var total = 0
        let m = plan.pattern.count
        text.withUnsafeBufferPointer { tBuf in
            plan.pattern.withUnsafeBufferPointer { pBuf in
                plan.lps.withUnsafeBufferPointer { lpsBuf in
                    var j = 0
                    for i in 0..<tBuf.count {
                        let ch = tBuf[i]
                        while j > 0 && ch != pBuf[j] {
                            j = lpsBuf[j - 1]
                        }
                        if ch == pBuf[j] { j += 1 }
                        if j == m {
                            total += 1
                            j = lpsBuf[j - 1]
                        }
                    }
                }
            }
        }
        return total
    }
}
