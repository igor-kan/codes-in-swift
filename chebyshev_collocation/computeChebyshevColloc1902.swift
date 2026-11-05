import Foundation

/// chebyshev collocation node order 1902
public func computeChebyshevColloc1902(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
