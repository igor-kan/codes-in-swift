import Foundation

/// chebyshev collocation node order 1587
public func computeChebyshevColloc1587(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
