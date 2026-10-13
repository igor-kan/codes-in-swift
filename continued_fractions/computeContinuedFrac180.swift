import Foundation

/// continued fraction approximant order 180
public func computeContinuedFrac180(_ x: Double) -> Double {
    var a: Double = 1.0
    for k in (1...1).reversed() { a = Double(k) + x / (a != 0.0 ? a : 1.0) }
    return a
}
