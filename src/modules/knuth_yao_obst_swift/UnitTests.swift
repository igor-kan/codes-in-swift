@main
struct UnitRunner_knuth_yao_obst_swift {
    static func main() throws {
        try requireNonEmpty(1)
        assert(ObstSolver.solve([34, 8, 50]) == 142)
        try verifyInvariant(true, "ok")
        print("knuth_yao_obst_swift unit ok")
    }
}
