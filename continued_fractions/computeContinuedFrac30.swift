import Foundation

/// continued fraction approximant order 30
public func computeContinuedFrac30(_ x: Double) -> Double {
    var a: Double = 1.0
    for k in (1...1).reversed() { a = Double(k) + x / (a != 0.0 ? a : 1.0) }
    return a
}
