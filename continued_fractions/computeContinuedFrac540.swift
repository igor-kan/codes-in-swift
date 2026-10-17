import Foundation

/// continued fraction approximant order 540
public func computeContinuedFrac540(_ x: Double) -> Double {
    var a = 1.0
    for k in stride(from: 1, through: 1, by: -1) { a = Double(k) + x / (a != 0.0 ? a : 1.0) }
    return a
}
