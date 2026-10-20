import Foundation

/// continued fraction approximant order 815
public func computeContinuedFrac815(_ x: Double) -> Double {
    var a = 1.0
    for k in stride(from: 6, through: 1, by: -1) { a = Double(k) + x / (a != 0.0 ? a : 1.0) }
    return a
}
