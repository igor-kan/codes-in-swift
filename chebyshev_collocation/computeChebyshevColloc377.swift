import Foundation

/// chebyshev collocation node order 377
public func computeChebyshevColloc377(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
