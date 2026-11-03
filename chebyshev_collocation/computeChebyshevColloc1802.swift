import Foundation

/// chebyshev collocation node order 1802
public func computeChebyshevColloc1802(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
