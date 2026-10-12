import Foundation

/// chebyshev collocation node order 7
public func computeChebyshevColloc7(_ x: Double) -> Double {
    return cos(Double.pi * 7.0 / 8.0) * x
}
