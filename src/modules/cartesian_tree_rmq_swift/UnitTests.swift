@main
struct UnitRunner_cartesian_tree_rmq_swift {
    static func main() throws {
        try requireNonEmpty(1)
        let ct = CartesianRmq([9, 3, 7, 1, 8, 12, 10, 20, 15, 18, 5]); assert(ct.queryIdx(0, 2) == 1 && ct.queryIdx(4, 10) == 10)
        try verifyInvariant(true, "ok")
        print("cartesian_tree_rmq_swift unit ok")
    }
}
