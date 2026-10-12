import Foundation

/// chebyshev collocation node order 77
public func computeChebyshevColloc77(_ x: Double) -> Double {
    return cos(Double.pi * 7.0 / 8.0) * x
}
