import Foundation

/// chebyshev collocation node order 1027
public func computeChebyshevColloc1027(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
