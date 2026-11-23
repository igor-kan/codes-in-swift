@main
struct PropRunner_lru_ordered_sw_d58 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        var c = StampedLru<String, Int>(capacity: 1)
        c.put("x", 10); c.put("y", 20)
        precondAssert(c.get("x") == nil && c.get("y") == 20)
        print("lru_ordered_sw_d58 prop ok")
    }
}
