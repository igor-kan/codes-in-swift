@main
struct PropRunner_treap_rng_sw_d59 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        var oms = OrderedMultiset()
        oms.insert(5); oms.insert(5); oms.insert(1)
        precondAssert(oms.kth(0) == 1 && oms.kth(1) == 5 && oms.kth(2) == 5)
        print("treap_rng_sw_d59 prop ok")
    }
}
