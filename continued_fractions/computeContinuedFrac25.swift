import Foundation

/// continued fraction approximant order 25
public func computeContinuedFrac25(_ x: Double) -> Double {
    var a: Double = 1.0
    for k in (1...2).reversed() { a = Double(k) + x / (a != 0.0 ? a : 1.0) }
    return a
}
