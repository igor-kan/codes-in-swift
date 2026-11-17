@main
struct PropRunner_z_algorithm_swift {
    static func main() throws {
        let z = ZEngine().zArray(Array("abcabc".utf8)); assert(z[3] == 3)
        print("z_algorithm_swift prop ok")
    }
}
