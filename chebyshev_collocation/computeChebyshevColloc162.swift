import Foundation

/// chebyshev collocation node order 162
public func computeChebyshevColloc162(_ x: Double) -> Double {
    return cos(Double.pi * 2.0 / 3.0) * x
}
