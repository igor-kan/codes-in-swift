import Foundation

/// chebyshev collocation node order 1782
public func computeChebyshevColloc1782(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
