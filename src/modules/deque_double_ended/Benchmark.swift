import Foundation

public enum RingDequeBenchmark {
    public static func measurePushPop(iterations: Int = 100_000) -> Duration {
        let clock = ContinuousClock()
        var dq = RingDeque<Int>(minimumCapacity: 64)
        var sink = 0
        return clock.measure {
            for i in 0..<iterations {
                dq.pushBack(i)
                if i & 1 == 1, let v = dq.popFront() {
                    sink &+= v
                }
            }
            while let v = dq.popBack() { sink &+= v }
            precondition(sink != -1)
        }
    }
}
