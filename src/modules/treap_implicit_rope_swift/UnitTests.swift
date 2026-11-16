import Foundation

public func runImplicitTreapTests() throws {
    try verifyReversalOracle(n: 12, ops: [(2, 7), (0, 11), (3, 9), (3, 9)])
    assert(try verifyValueCopyReversalIsolation())
}
