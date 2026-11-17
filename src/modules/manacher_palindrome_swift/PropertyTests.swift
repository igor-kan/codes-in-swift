@main
struct PropRunner_manacher_palindrome_swift {
    static func main() throws {
        let res = try ManacherEngine().analyze("abba"); assert(res.length == 4 && res.total == 6)
        print("manacher_palindrome_swift prop ok")
    }
}
