import Foundation

/// chebyshev collocation node order 1767
public func computeChebyshevColloc1767(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
