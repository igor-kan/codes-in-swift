@main
struct PropRunner_binary_heap_pq_d57 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        var hp = MinBinaryHeap<Int>()
        hp.push(42); hp.push(42)
        precondAssert(hp.popMin() == 42 && hp.popMin() == 42 && hp.isEmpty)
        print("binary_heap_pq_d57 prop ok")
    }
}
