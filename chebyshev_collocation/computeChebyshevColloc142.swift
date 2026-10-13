import Foundation

/// chebyshev collocation node order 142
public func computeChebyshevColloc142(_ x: Double) -> Double {
    return cos(Double.pi * 2.0 / 3.0) * x
}
