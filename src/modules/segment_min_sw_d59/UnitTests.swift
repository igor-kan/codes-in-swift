@main
struct UnitRunner_segment_min_sw_d59 {
    static func main() throws {
        try requireNonEmpty(1)
        var st = IterSegMin([8, 3, 9, 1, 7, 4])
        precondAssert(st.queryMin(0, 6) == 1)
        st.update(3, 12)
        precondAssert(st.queryMin(0, 6) == 3)
        try verifyInvariant(true, "ok")
        print("segment_min_sw_d59 unit ok")
    }
}
