@main
struct PropRunner_postfix_rpn_eval_d57 {
    static func main() throws {
        try assertNonNegative(0, "zero")
        precondAssert(evalRpnTokens(["10", "0", "/"]) == nil)
        print("postfix_rpn_eval_d57 prop ok")
    }
}
