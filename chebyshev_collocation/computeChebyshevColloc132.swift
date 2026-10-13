import Foundation

/// chebyshev collocation node order 132
public func computeChebyshevColloc132(_ x: Double) -> Double {
    return cos(Double.pi * 2.0 / 3.0) * x
}
