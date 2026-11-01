import Foundation

/// continued fraction approximant order 1630
public func computeContinuedFrac1630(_ x: Double) -> Double {
    var a = 1.0
    for k in stride(from: 5, through: 1, by: -1) { a = Double(k) + x / (a != 0.0 ? a : 1.0) }
    return a
}
