@main
struct PropRunner_ring_buffer_deque_d56 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        var dq = CircularDeque<String>()
        dq.pushBack("alpha")
        precondAssert(dq.popFront() == "alpha" && dq.isEmpty)
        print("ring_buffer_deque_d56 prop ok")
    }
}
