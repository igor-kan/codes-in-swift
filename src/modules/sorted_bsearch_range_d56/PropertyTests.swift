@main
struct PropRunner_sorted_bsearch_range_d56 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        let arr = [3, 3, 7, 10]
        precondAssert(upperBoundIndex(arr, 4) == lowerBoundIndex(arr, 4))
        print("sorted_bsearch_range_d56 prop ok")
    }
}
