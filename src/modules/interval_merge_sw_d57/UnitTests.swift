@main
struct UnitRunner_interval_merge_sw_d57 {
    static func main() throws {
        try requireNonEmpty(1)
        let res = mergeSpans([IntSpan(start: 1, end: 4), IntSpan(start: 3, end: 6), IntSpan(start: 8, end: 10)])
        precondAssert(res == [IntSpan(start: 1, end: 6), IntSpan(start: 8, end: 10)])
        try verifyInvariant(true, "ok")
        print("interval_merge_sw_d57 unit ok")
    }
}
