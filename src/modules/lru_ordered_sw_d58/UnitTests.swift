@main
struct UnitRunner_lru_ordered_sw_d58 {
    static func main() throws {
        try requireNonEmpty(1)
        var c = StampedLru<Int, String>(capacity: 2)
        c.put(1, "a"); c.put(2, "b")
        precondAssert(c.get(1) == "a")
        c.put(3, "c")
        precondAssert(c.get(2) == nil && c.get(3) == "c")
        try verifyInvariant(true, "ok")
        print("lru_ordered_sw_d58 unit ok")
    }
}
