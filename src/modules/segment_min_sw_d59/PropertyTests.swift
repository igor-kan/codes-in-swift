@main
struct PropRunner_segment_min_sw_d59 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        let st = IterSegMin([5, 2, 9, 6])
        precondAssert(st.queryMin(0, 2) == 2 && st.queryMin(2, 4) == 6)
        print("segment_min_sw_d59 prop ok")
    }
}
