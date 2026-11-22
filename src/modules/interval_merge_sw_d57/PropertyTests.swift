@main
struct PropRunner_interval_merge_sw_d57 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        let res = mergeSpans([IntSpan(start: 2, end: 5), IntSpan(start: 5, end: 9)])
        precondAssert(res == [IntSpan(start: 2, end: 9)])
        print("interval_merge_sw_d57 prop ok")
    }
}
