import Foundation

/// continued fraction approximant order 855
public func computeContinuedFrac855(_ x: Double) -> Double {
    var a = 1.0
    for k in stride(from: 4, through: 1, by: -1) { a = Double(k) + x / (a != 0.0 ? a : 1.0) }
    return a
}
