@main
struct PropRunner_segment_tree_lazy_swift {
    static func main() throws {
        let st = LazySegmentTree(10); st.add(0, 9, 5); assert(st.sum(0, 9) == 50)
        print("segment_tree_lazy_swift prop ok")
    }
}
