import Foundation

/// chebyshev collocation node order 1262
public func computeChebyshevColloc1262(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
