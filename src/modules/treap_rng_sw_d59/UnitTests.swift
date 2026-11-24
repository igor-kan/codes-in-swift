@main
struct UnitRunner_treap_rng_sw_d59 {
    static func main() throws {
        try requireNonEmpty(1)
        var oms = OrderedMultiset()
        for v in [30, 10, 40, 20] { oms.insert(v) }
        precondAssert(oms.kth(0) == 10 && oms.kth(2) == 30 && oms.count == 4)
        try verifyInvariant(true, "ok")
        print("treap_rng_sw_d59 unit ok")
    }
}
