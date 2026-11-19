@main
struct UnitRunner_stoer_wagner_mincut_swift {
    static func main() throws {
        try requireNonEmpty(1)
        let g = [[0,2,0,0,3],[2,0,3,0,2],[0,3,0,4,0],[0,0,4,0,1],[3,2,0,1,0]]; assert(StoerWagner.globalMinCut(g) == 4)
        try verifyInvariant(true, "ok")
        print("stoer_wagner_mincut_swift unit ok")
    }
}
