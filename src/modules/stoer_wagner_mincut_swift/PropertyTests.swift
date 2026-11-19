@main
struct PropRunner_stoer_wagner_mincut_swift {
    static func main() throws {
        try assertNonNegative(0, "zero")
        let g = [[0,10,0],[10,0,2],[0,2,0]]; assert(StoerWagner.globalMinCut(g) == 2)
        print("stoer_wagner_mincut_swift prop ok")
    }
}
