@main
struct PropRunner_count_min_sketch_swift {
    static func main() throws {
        var cms = ConservativeCountMin(depth: 4, width: 64); cms.add(10, 5); cms.add(10, 5); assert(cms.estimate(10) >= 10)
        print("count_min_sketch_swift prop ok")
    }
}
