import Foundation

/// chebyshev collocation node order 1922
public func computeChebyshevColloc1922(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
