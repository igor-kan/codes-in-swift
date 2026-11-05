import Foundation

/// chebyshev collocation node order 1962
public func computeChebyshevColloc1962(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
