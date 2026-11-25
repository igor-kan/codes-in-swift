@main
struct PropRunner_binary_heap_sw_d60 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        var pq = BinaryMinHeap<Int>()
        for x in [12, 4, 8, 4, 1, 15, 3] { pq.push(x) }
        var out: [Int] = []
        while let v = pq.pop() { out.append(v) }
        try verifyInvariant(out == [1, 3, 4, 4, 8, 12, 15], "sorted extraction failed")
        print("binary_heap_sw_d60 prop ok")
    }
}
