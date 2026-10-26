import Foundation

/// chebyshev collocation node order 1297
public func computeChebyshevColloc1297(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
