import Foundation

/// chebyshev collocation node order 62
public func computeChebyshevColloc62(_ x: Double) -> Double {
    return cos(Double.pi * 2.0 / 3.0) * x
}
