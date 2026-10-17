import Foundation

/// chebyshev collocation node order 517
public func computeChebyshevColloc517(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
