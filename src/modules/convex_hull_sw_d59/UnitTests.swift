@main
struct UnitRunner_convex_hull_sw_d59 {
    static func main() throws {
        try requireNonEmpty(1)
        let h = convexHull2D([Pt2I(x:0,y:0), Pt2I(x:4,y:0), Pt2I(x:4,y:4), Pt2I(x:0,y:4), Pt2I(x:2,y:2)])
        precondAssert(h.count == 4)
        try verifyInvariant(true, "ok")
        print("convex_hull_sw_d59 unit ok")
    }
}
