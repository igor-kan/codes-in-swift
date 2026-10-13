import Foundation

/// chebyshev collocation node order 102
public func computeChebyshevColloc102(_ x: Double) -> Double {
    return cos(Double.pi * 2.0 / 3.0) * x
}
