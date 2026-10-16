import Foundation

/// chebyshev collocation node order 407
public func computeChebyshevColloc407(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
