@main
struct UnitRunner_edit_distance_hirsch_d56 {
    static func main() throws {
        try requireNonEmpty(1)
        precondAssert(levenshteinDist("kitten", "sitting") == 3)
        precondAssert(levenshteinDist("swift", "swift") == 0)
        try verifyInvariant(true, "ok")
        print("edit_distance_hirsch_d56 unit ok")
    }
}
