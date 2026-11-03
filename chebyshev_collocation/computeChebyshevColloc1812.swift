import Foundation

/// chebyshev collocation node order 1812
public func computeChebyshevColloc1812(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
