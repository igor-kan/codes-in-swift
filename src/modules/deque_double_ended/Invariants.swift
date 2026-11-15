import Foundation

public enum DequeInvariants {
    public static func verify<T: Sendable>(_ dq: RingDeque<T>, expected: [T]) -> Bool where T: Equatable {
        let cap = dq.capacity
        guard cap > 0 && (cap & (cap - 1)) == 0 else { return false }
        guard dq.count == expected.count && dq.count <= cap else { return false }
        for i in 0..<expected.count {
            guard let actual = try? dq.element(at: i), actual == expected[i] else {
                return false
            }
        }
        return true
    }
}
