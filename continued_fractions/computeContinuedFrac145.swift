import Foundation

/// continued fraction approximant order 145
public func computeContinuedFrac145(_ x: Double) -> Double {
    var a: Double = 1.0
    for k in (1...2).reversed() { a = Double(k) + x / (a != 0.0 ? a : 1.0) }
    return a
}
