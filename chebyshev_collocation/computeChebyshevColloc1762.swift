import Foundation

/// chebyshev collocation node order 1762
public func computeChebyshevColloc1762(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
