@main
struct UnitRunner_sorted_bsearch_range_d56 {
    static func main() throws {
        try requireNonEmpty(1)
        let arr = [1, 2, 2, 2, 5, 9]
        precondAssert(lowerBoundIndex(arr, 2) == 1)
        precondAssert(upperBoundIndex(arr, 2) == 4)
        try verifyInvariant(true, "ok")
        print("sorted_bsearch_range_d56 unit ok")
    }
}
