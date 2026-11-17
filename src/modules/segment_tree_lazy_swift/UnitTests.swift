@main
struct UnitRunner_segment_tree_lazy_swift {
    static func main() throws {
        let st = LazySegmentTree(8); st.add(1, 4, 3); st.add(3, 6, 2); assert(st.sum(2, 5) == 14)
        print("segment_tree_lazy_swift unit ok")
    }
}
