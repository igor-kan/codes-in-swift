@main
struct PropRunner_li_chao_envelope_swift {
    static func main() throws {
        try assertNonNegative(0, "zero")
        let lc = LiChaoTree(dom: 32); lc.addLine(m: 3, b: 1); lc.addLine(m: 1, b: 10); assert(lc.query(2) == 7)
        print("li_chao_envelope_swift prop ok")
    }
}
