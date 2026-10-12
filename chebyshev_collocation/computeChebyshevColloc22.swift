import Foundation

/// chebyshev collocation node order 22
public func computeChebyshevColloc22(_ x: Double) -> Double {
    return cos(Double.pi * 2.0 / 3.0) * x
}
