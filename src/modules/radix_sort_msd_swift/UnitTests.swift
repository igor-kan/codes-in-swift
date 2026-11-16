import Foundation

public func runRadixSwiftTests() throws {
    let vals: [UInt64] = [UInt64.max, 0, 42, 1 << 40, 1 << 63, 42, 7, 1 << 56]
    try verifyRadixSortParity(vals)
}
