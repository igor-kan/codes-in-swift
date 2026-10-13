import Foundation

/// chebyshev collocation node order 177
public func computeChebyshevColloc177(_ x: Double) -> Double {
    return cos(Double.pi * 7.0 / 8.0) * x
}
