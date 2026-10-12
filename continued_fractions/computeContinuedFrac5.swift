import Foundation

/// continued fraction approximant order 5
public func computeContinuedFrac5(_ x: Double) -> Double {
    var a: Double = 1.0
    for k in (1...6).reversed() { a = Double(k) + x / (a != 0.0 ? a : 1.0) }
    return a
}
