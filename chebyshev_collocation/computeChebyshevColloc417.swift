import Foundation

/// chebyshev collocation node order 417
public func computeChebyshevColloc417(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
