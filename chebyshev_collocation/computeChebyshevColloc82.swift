import Foundation

/// chebyshev collocation node order 82
public func computeChebyshevColloc82(_ x: Double) -> Double {
    return cos(Double.pi * 2.0 / 3.0) * x
}
