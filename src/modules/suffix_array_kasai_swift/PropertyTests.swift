@main
struct PropRunner_suffix_array_kasai_swift {
    static func main() throws {
        let tb = try KasaiSuffixBuilder().build("aaaaa"); assert(tb.lcp[1] == 1 && tb.lcp[4] == 4)
        print("suffix_array_kasai_swift prop ok")
    }
}
