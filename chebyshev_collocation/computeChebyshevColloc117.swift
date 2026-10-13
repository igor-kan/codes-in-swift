import Foundation

/// chebyshev collocation node order 117
public func computeChebyshevColloc117(_ x: Double) -> Double {
    return cos(Double.pi * 7.0 / 8.0) * x
}
