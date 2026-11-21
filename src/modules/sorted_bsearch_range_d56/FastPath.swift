public func fastByteXor(_ s: String) -> UInt8 {
    var acc: UInt8 = 0
    for b in s.utf8 {
        acc ^= b
    }
    return acc
}
