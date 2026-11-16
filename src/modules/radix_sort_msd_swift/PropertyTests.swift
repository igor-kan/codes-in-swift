import Foundation

public func runRadixSwiftPropTests() throws {
    var s: UInt64 = 0xCAFEBABE12345678
    var data = [UInt64]()
    for _ in 0..<300 {
        s = s &* 6364136223846793005 &+ 1
        data.append(s)
    }
    try verifyRadixSortParity(data)
    assert(isStrictlySorted(radixSortedCopy(data)))
}
