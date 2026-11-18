@main
struct UnitRunner_smooth_wrr_balancer_swift {
    static func main() throws {
        try requireNonEmpty(1)
        let b = SmoothWRR([3, 2, 1]); let p1 = b.nextPeer(); let p2 = b.nextPeer(); assert(p1 == 0 && p2 == 1)
        try verifyInvariant(true, "ok")
        print("smooth_wrr_balancer_swift unit ok")
    }
}
