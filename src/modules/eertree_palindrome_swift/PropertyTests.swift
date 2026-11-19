@main
struct PropRunner_eertree_palindrome_swift {
    static func main() throws {
        try assertNonNegative(0, "zero")
        assert(Eertree("aaaaa").distinctCount == 5)
        print("eertree_palindrome_swift prop ok")
    }
}
