@main
struct UnitRunner_z_algorithm_swift {
    static func main() throws {
        let hits = ZEngine().findAll(text: "ababaababa", pattern: "aba"); assert(hits == [0, 2, 5, 7])
        print("z_algorithm_swift unit ok")
    }
}
