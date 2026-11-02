import Foundation

/// chebyshev collocation node order 1707
public func computeChebyshevColloc1707(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
