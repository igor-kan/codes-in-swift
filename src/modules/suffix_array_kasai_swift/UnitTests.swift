@main
struct UnitRunner_suffix_array_kasai_swift {
    static func main() throws {
        let tb = try KasaiSuffixBuilder().build("banana$"); assert(tb.sa.count == 7 && tb.lcp.max() == 3)
        print("suffix_array_kasai_swift unit ok")
    }
}
