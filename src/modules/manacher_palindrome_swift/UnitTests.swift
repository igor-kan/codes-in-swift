@main
struct UnitRunner_manacher_palindrome_swift {
    static func main() throws {
        let res = try ManacherEngine().analyze("babad"); assert(res.length == 3)
        print("manacher_palindrome_swift unit ok")
    }
}
