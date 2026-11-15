import Foundation

public enum KmpBenchmark {
    public static func measureScan(length: Int = 200_000) -> Duration {
        let clock = ContinuousClock()
        let matcher = KmpMatcher()
        let plan = try! matcher.compile(pattern: Array("aabaaab".utf8))
        let text = ContiguousArray<UInt8>(repeating: 97, count: length)
        return clock.measure {
            let cnt = KmpUnsafeScanner.countMatches(text: text, plan: plan)
            precondition(cnt == 0)
        }
    }
}
