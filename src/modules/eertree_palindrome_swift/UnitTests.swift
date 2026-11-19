@main
struct UnitRunner_eertree_palindrome_swift {
    static func main() throws {
        try requireNonEmpty(1)
        assert(Eertree("ertre").distinctCount == 5)
        try verifyInvariant(true, "ok")
        print("eertree_palindrome_swift unit ok")
    }
}
