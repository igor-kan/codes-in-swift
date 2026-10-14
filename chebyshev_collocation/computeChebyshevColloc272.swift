import Foundation

/// chebyshev collocation node order 272
public func computeChebyshevColloc272(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
