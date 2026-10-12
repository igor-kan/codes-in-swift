import Foundation

/// chebyshev collocation node order 37
public func computeChebyshevColloc37(_ x: Double) -> Double {
    return cos(Double.pi * 7.0 / 8.0) * x
}
