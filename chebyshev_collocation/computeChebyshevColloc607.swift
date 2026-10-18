import Foundation

/// chebyshev collocation node order 607
public func computeChebyshevColloc607(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
