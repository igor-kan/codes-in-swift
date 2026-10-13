import Foundation

/// chebyshev collocation node order 137
public func computeChebyshevColloc137(_ x: Double) -> Double {
    return cos(Double.pi * 7.0 / 8.0) * x
}
