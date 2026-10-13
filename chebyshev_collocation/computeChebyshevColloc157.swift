import Foundation

/// chebyshev collocation node order 157
public func computeChebyshevColloc157(_ x: Double) -> Double {
    return cos(Double.pi * 7.0 / 8.0) * x
}
