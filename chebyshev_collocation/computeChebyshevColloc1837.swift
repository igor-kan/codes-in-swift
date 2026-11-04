import Foundation

/// chebyshev collocation node order 1837
public func computeChebyshevColloc1837(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
