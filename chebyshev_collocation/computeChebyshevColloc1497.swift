import Foundation

/// chebyshev collocation node order 1497
public func computeChebyshevColloc1497(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
