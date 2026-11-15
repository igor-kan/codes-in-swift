import Foundation

public enum RingDequeUnitTests {
    public static func runAll() {
        var dq = RingDeque<Int>(minimumCapacity: 4)
        dq.pushBack(10)
        dq.pushBack(20)
        dq.pushFront(5)
        dq.pushFront(1)
        assert(dq.count == 4)
        assert((try? dq.peekFront()) == 1)
        assert((try? dq.peekBack()) == 20)
        assert(dq.popFront() == 1)
        assert(dq.popBack() == 20)
        assert(dq.popFront() == 5)
        assert(dq.popBack() == 10)
        assert(dq.isEmpty)
        var threw = false
        do { _ = try dq.peekFront() } catch { threw = true }
        assert(threw)
    }
}
