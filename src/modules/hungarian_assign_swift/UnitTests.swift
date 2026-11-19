@main
struct UnitRunner_hungarian_assign_swift {
    static func main() throws {
        try requireNonEmpty(1)
        assert(HungarianSolver.minCost([[1,2,3],[2,4,6],[3,6,9]]) == 10)
        try verifyInvariant(true, "ok")
        print("hungarian_assign_swift unit ok")
    }
}
