@main
struct PropRunner_convex_hull_sw_d59 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        let tri = convexHull2D([Pt2I(x:0,y:0), Pt2I(x:6,y:0), Pt2I(x:3,y:5), Pt2I(x:3,y:1)])
        precondAssert(tri.count == 3)
        print("convex_hull_sw_d59 prop ok")
    }
}
