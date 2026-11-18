@main
struct UnitRunner_li_chao_envelope_swift {
    static func main() throws {
        try requireNonEmpty(1)
        let lc = LiChaoTree(dom: 64); lc.addLine(m: 2, b: 10); lc.addLine(m: -1, b: 50); lc.addLine(m: 0, b: 25); assert(lc.query(5) == 20 && lc.query(40) == 10)
        try verifyInvariant(true, "ok")
        print("li_chao_envelope_swift unit ok")
    }
}
