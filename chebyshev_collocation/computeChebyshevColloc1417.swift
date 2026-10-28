import Foundation

/// chebyshev collocation node order 1417
public func computeChebyshevColloc1417(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
