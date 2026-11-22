@main
struct UnitRunner_postfix_rpn_eval_d57 {
    static func main() throws {
        try requireNonEmpty(1)
        precondAssert(evalRpnTokens(["2", "1", "+", "3", "*"]) == 9)
        precondAssert(evalRpnTokens(["4", "13", "5", "/", "+"]) == 6)
        try verifyInvariant(true, "ok")
        print("postfix_rpn_eval_d57 unit ok")
    }
}
