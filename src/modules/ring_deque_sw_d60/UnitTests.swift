@main
struct UnitRunner_ring_deque_sw_d60 {
    static func main() throws {
        try requireNonEmpty(1)
        var dq = RingDeque<Int>(initialCapacity: 4)
        dq.pushBack(10); dq.pushBack(20); dq.pushFront(5)
        try verifyInvariant(dq.popFront() == 5, "front mismatch")
        try verifyInvariant(dq.popFront() == 10, "second mismatch")
        try verifyInvariant(true, "ok")
        print("ring_deque_sw_d60 unit ok")
    }
}
