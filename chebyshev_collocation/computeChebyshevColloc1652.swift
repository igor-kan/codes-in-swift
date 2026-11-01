import Foundation

/// chebyshev collocation node order 1652
public func computeChebyshevColloc1652(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
