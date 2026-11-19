@main
struct PropRunner_hungarian_assign_swift {
    static func main() throws {
        try assertNonNegative(0, "zero")
        assert(HungarianSolver.minCost([[10,1],[2,10]]) == 3)
        print("hungarian_assign_swift prop ok")
    }
}
