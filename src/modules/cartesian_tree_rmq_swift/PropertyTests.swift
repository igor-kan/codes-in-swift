@main
struct PropRunner_cartesian_tree_rmq_swift {
    static func main() throws {
        try assertNonNegative(0, "zero")
        let ct = CartesianRmq([5, 2, 8]); assert(ct.queryIdx(0, 2) == 1)
        print("cartesian_tree_rmq_swift prop ok")
    }
}
