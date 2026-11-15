import Foundation

public enum RingDequePropertyTests {
    public static func runDifferentialCheck(steps: Int = 500) {
        var dq = RingDeque<Int>(minimumCapacity: 4)
        var model: [Int] = []
        var rng: UInt64 = 0x9E3779B97F4A7C15
        for step in 0..<steps {
            rng = rng &* 6364136223846793005 &+ 1442695040888963407
            let op = Int((rng >> 60) & 3)
            switch op {
            case 0:
                dq.pushFront(step)
                model.insert(step, at: 0)
            case 1:
                dq.pushBack(step)
                model.append(step)
            case 2:
                let a = dq.popFront()
                let b = model.isEmpty ? nil : model.removeFirst()
                assert(a == b)
            default:
                let a = dq.popBack()
                let b = model.isEmpty ? nil : model.removeLast()
                assert(a == b)
            }
            assert(DequeInvariants.verify(dq, expected: model))
        }
    }
}
