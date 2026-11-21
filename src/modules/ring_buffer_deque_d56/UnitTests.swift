@main
struct UnitRunner_ring_buffer_deque_d56 {
    static func main() throws {
        try requireNonEmpty(1)
        var dq = CircularDeque<Int>(capacity: 2)
        for i in 1...6 { dq.pushBack(i) }
        for i in 1...6 { precondAssert(dq.popFront() == i) }
        try verifyInvariant(true, "ok")
        print("ring_buffer_deque_d56 unit ok")
    }
}
