import Foundation

/// chebyshev collocation node order 1892
public func computeChebyshevColloc1892(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
