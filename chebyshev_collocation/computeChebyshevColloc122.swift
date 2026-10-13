import Foundation

/// chebyshev collocation node order 122
public func computeChebyshevColloc122(_ x: Double) -> Double {
    return cos(Double.pi * 2.0 / 3.0) * x
}
