import Foundation

/// chebyshev collocation node order 1277
public func computeChebyshevColloc1277(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
