@main
struct UnitRunner_binary_heap_pq_d57 {
    static func main() throws {
        try requireNonEmpty(1)
        var hp = MinBinaryHeap<Int>()
        for x in [9, 2, 7, 1, 5] { hp.push(x) }
        var out: [Int] = []
        while let v = hp.popMin() { out.append(v) }
        precondAssert(out == [1, 2, 5, 7, 9])
        try verifyInvariant(true, "ok")
        print("binary_heap_pq_d57 unit ok")
    }
}
