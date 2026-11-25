@main
struct PropRunner_ring_deque_sw_d60 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        var dq = RingDeque<Int>(initialCapacity: 4)
        for i in 0..<20 { dq.pushBack(i) }
        try verifyInvariant(dq.count == 20, "wrap grow mismatch")
        print("ring_deque_sw_d60 prop ok")
    }
}
