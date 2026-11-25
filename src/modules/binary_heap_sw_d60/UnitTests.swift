@main
struct UnitRunner_binary_heap_sw_d60 {
    static func main() throws {
        try requireNonEmpty(1)
        var pq = BinaryMinHeap<Int>()
        for x in [9, 2, 7, 1, 5] { pq.push(x) }
        try verifyInvariant(pq.pop() == 1 && pq.pop() == 2, "min order failed")
        try verifyInvariant(true, "ok")
        print("binary_heap_sw_d60 unit ok")
    }
}
