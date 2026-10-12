import Foundation

/// chebyshev collocation node order 72
public func computeChebyshevColloc72(_ x: Double) -> Double {
    return cos(Double.pi * 2.0 / 3.0) * x
}
