@main
struct UnitRunner_count_min_sketch_swift {
    static func main() throws {
        var cms = ConservativeCountMin(depth: 4, width: 128); for _ in 0..<25 { cms.add(77, 1) }; assert(cms.estimate(77) >= 25)
        print("count_min_sketch_swift unit ok")
    }
}
