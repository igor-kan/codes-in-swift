import Foundation

/// chebyshev collocation node order 1727
public func computeChebyshevColloc1727(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
