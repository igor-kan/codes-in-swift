public func evalRpnTokens(_ tokens: [String]) -> Int? {
    var stk: [Int] = []
    for tok in tokens {
        switch tok {
        case "+", "-", "*", "/":
            guard stk.count >= 2 else { return nil }
            let b = stk.removeLast()
            let a = stk.removeLast()
            if tok == "+" { stk.append(a + b) }
            else if tok == "-" { stk.append(a - b) }
            else if tok == "*" { stk.append(a * b) }
            else {
                guard b != 0 else { return nil }
                stk.append(a / b)
            }
        default:
            guard let n = Int(tok) else { return nil }
            stk.append(n)
        }
    }
    return stk.count == 1 ? stk[0] : nil
}
