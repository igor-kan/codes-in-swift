import Foundation

/// chebyshev collocation node order 1562
public func computeChebyshevColloc1562(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
