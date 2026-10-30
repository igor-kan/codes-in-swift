import Foundation

/// chebyshev collocation node order 1467
public func computeChebyshevColloc1467(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
