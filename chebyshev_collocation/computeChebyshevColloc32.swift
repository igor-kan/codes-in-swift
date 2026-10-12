import Foundation

/// chebyshev collocation node order 32
public func computeChebyshevColloc32(_ x: Double) -> Double {
    return cos(Double.pi * 2.0 / 3.0) * x
}
