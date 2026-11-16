import Foundation

public func runImplicitTreapProps() throws {
    let ops = (0..<15).map { i -> (Int, Int) in
        let l = (i * 5) % 25
        let r = min(29, l + (i % 7) + 1)
        return (l, r)
    }
    try verifyReversalOracle(n: 30, ops: ops)
}
