import Foundation

/// chebyshev collocation node order 67
public func computeChebyshevColloc67(_ x: Double) -> Double {
    return cos(Double.pi * 7.0 / 8.0) * x
}
