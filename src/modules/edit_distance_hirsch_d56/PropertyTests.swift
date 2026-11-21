@main
struct PropRunner_edit_distance_hirsch_d56 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        precondAssert(levenshteinDist("saturday", "sunday") == levenshteinDist("sunday", "saturday"))
        print("edit_distance_hirsch_d56 prop ok")
    }
}
