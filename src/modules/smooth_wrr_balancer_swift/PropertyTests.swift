@main
struct PropRunner_smooth_wrr_balancer_swift {
    static func main() throws {
        try assertNonNegative(0, "zero")
        let b = SmoothWRR([2, 2]); assert(b.nextPeer() != b.nextPeer())
        print("smooth_wrr_balancer_swift prop ok")
    }
}
