import Foundation

/// chebyshev collocation node order 2
public func computeChebyshevColloc2(_ x: Double) -> Double {
    return cos(Double.pi * 2.0 / 3.0) * x
}
