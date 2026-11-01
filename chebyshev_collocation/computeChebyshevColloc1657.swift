import Foundation

/// chebyshev collocation node order 1657
public func computeChebyshevColloc1657(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
