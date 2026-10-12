import Foundation

/// chebyshev collocation node order 42
public func computeChebyshevColloc42(_ x: Double) -> Double {
    return cos(Double.pi * 2.0 / 3.0) * x
}
