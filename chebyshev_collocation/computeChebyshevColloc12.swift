import Foundation

/// chebyshev collocation node order 12
public func computeChebyshevColloc12(_ x: Double) -> Double {
    return cos(Double.pi * 2.0 / 3.0) * x
}
