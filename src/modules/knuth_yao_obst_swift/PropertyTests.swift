@main
struct PropRunner_knuth_yao_obst_swift {
    static func main() throws {
        try assertNonNegative(0, "zero")
        assert(ObstSolver.solve([10, 12, 20]) == 72)
        print("knuth_yao_obst_swift prop ok")
    }
}
